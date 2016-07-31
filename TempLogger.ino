#include <EEPROM.h>
#include <DHT.h>          // https://github.com/adafruit/DHT-sensor-library v: 1.2.3
#include <ESP8266WiFi.h>  // https://github.com/esp8266/Arduino v: 2.1.0
#include <DNSServer.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>  // https://github.com/tzapu/WiFiManager v: 0.10.0

#define LED 4
#define BUTTON 13
#define DHTPIN 2
#define DHTTYPE DHT22
DHT dht(DHTPIN, DHTTYPE);

const char* thingspeakHost = "184.106.153.149";
const int httpPort = 80;
char thingspeakKey[40];

WiFiManager wifiManager;

void setup() {

  pinMode(LED, OUTPUT);
  pinMode(BUTTON, INPUT_PULLUP);

  EEPROM.begin(512);
  EEPROM.get(0, thingspeakKey);
  EEPROM.end();
  
  WiFiManagerParameter param("Thingspeak", "thingspeak key", thingspeakKey, 40);
  wifiManager.addParameter(&param);

  digitalWrite(LED, HIGH);
  wifiManager.autoConnect("TempLogger");
  digitalWrite(LED, LOW);
  
  strcpy(thingspeakKey, param.getValue());
  
  EEPROM.begin(512);
  EEPROM.put(0, thingspeakKey);
  EEPROM.end();
  
  dht.begin();
}

void loop() {
  if (digitalRead(BUTTON) == LOW) {
    // startConfigPortal causes issues with custom parameter
    wifiManager.resetSettings();
    digitalWrite(LED, HIGH);
    wifiManager.autoConnect("TempLogger");
    digitalWrite(LED, LOW);
  }
  float h = dht.readHumidity();
  float t = dht.readTemperature();
  sendData(t, h, humidex(t, dewPoint(t,h)));
  for (int i = 0; i < 60; ++i) {
    delay(1000);
    if (digitalRead(BUTTON) == LOW) {
      break;
    }
  }
}

float dewPoint(float temp, float humidity) {     
 // https://ag.arizona.edu/azmet/dewpoint.html

  double b = (log(humidity / 100) + ((17.27 * temp) / (237.3 + temp))) / 17.27;
  return (237.3 * b) / (1 - b);
}

float humidex(float temp, float dewPoint) {
  double e = 19.833625 - 5417.753 /(273.16 + dewPoint);
  double h = temp + 3.3941 * exp(e) - 5.555;
  return h;
}

void sendData(float temp, float humidity, float humidex) {
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
    
