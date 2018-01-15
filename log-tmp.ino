#include <EEPROM.h>
#include "ClosedCube_HDC1080.h"
#include <ESP8266WiFi.h>  // https://github.com/esp8266/Arduino v: 2.1.0
#include <DNSServer.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>  // https://github.com/tzapu/WiFiManager v: 0.10.0

#define STATUS_LED 5
#define PULSE_LED 4

#define CONFIG_BUTTON 0

#define SDA 13
#define SCL 12

struct reading {
  float temp;
  float humidity;
};


ClosedCube_HDC1080 hdc1080;

//const char* thingspeakHost = "184.106.153.149";
const char* thingspeakHost = "api.thingspeak.com";
const int httpPort = 80;
char thingspeakKey[40];

WiFiManager wifiManager;

void setup() {
  Serial.begin(115200);
  pinMode(STATUS_LED, OUTPUT);
  pinMode(PULSE_LED, OUTPUT);
  digitalWrite(STATUS_LED, HIGH);
  digitalWrite(PULSE_LED, HIGH);

  EEPROM.begin(512);
  EEPROM.get(0, thingspeakKey);
  EEPROM.end();

  Serial.println("Connecting...");
  WiFiManagerParameter param("Thingspeak", "thingspeak key", thingspeakKey, 40);
  wifiManager.addParameter(&param); 

  digitalWrite(STATUS_LED, LOW);
  wifiManager.autoConnect("TempLogger");
  Serial.println("Connected");
  digitalWrite(STATUS_LED, HIGH);
  
  strcpy(thingspeakKey, param.getValue());
  
  EEPROM.begin(512);
  EEPROM.put(0, thingspeakKey);
  EEPROM.end();
  
  hdc1080.begin(0x40,SDA, SCL);
}

reading previousReading = {0, 0};

float minTempDelta = 0.2;
float minHumidityDelta = 1;
int count = 0;
int changeCount = 0;
int idleCount = 0;

void loop() {
  reading newReading = averageReading(60, 1000);
  float humidex = calcHumidex(newReading.temp, newReading.humidity);

  if ( idleCount == 10 ||
    abs(newReading.temp - previousReading.temp) >= minTempDelta || 
    abs(newReading.humidity - previousReading.humidity) >= minHumidityDelta
  ) {
    idleCount = 0;
    sendData(newReading.temp, newReading.humidity, humidex);
    previousReading = newReading;
    ++changeCount;
  } else {
//    ++idleCount;
  }
  ++count;
}

float calcDewPoint(float temp, float humidity) {     
 // https://ag.arizona.edu/azmet/dewpoint.html

  double b = (log(humidity / 100) + ((17.27 * temp) / (237.3 + temp))) / 17.27;
  return (237.3 * b) / (1 - b);
}

float calcHumidex(float temp, float humidity) {
  float dewPoint = calcDewPoint(temp, humidity);
  double e = 19.833625 - 5417.753 /(273.16 + dewPoint);
  double h = temp + 3.3941 * exp(e) - 5.555;
  return h;
}

void sendData(float temp, float humidity, float humidex) {
  
  Serial.print(temp);
  Serial.print(" ");
  Serial.print(humidity);
  Serial.print(" ");
  Serial.println(humidex);
  
  WiFiClient client;
  if (client.connect(thingspeakHost, httpPort)) {
    String url = "/update?key=";
    url += thingspeakKey;
    url += "&field1=";
    url += temp;
    url += "&field2=";
    url += humidity;
    url += "&field3=";
    url += humidex;
    
    client.print(String("GET ") +
      url +
      " HTTP/1.1\r\n" +
      "Host: " +
      thingspeakHost +
      "\r\n" +
      "Connection: close\r\n\r\n"
    );
  }
}
    
reading averageReading(int readings, int delayMS) {
  double totalTemp = 0;
  double totalHumidity = 0;

  for (int i = 0; i < readings; ++i) {
    if (i % 2 == 0) {
      digitalWrite(PULSE_LED, LOW);
    } else {
      digitalWrite(PULSE_LED, HIGH);
    }
    totalTemp += hdc1080.readTemperature();
    totalHumidity += hdc1080.readHumidity();
    delay(delayMS);
  }

  return (reading) {totalTemp / readings, totalHumidity / readings};
}
