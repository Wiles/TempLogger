#include <DHT.h>
#include <ESP8266WiFi.h>
#include <EEPROM.h>
#include <WiFiManager.h>

#define DHTPIN 2
#define DHTTYPE DHT22   // DHT 22  (AM2302)
DHT dht(DHTPIN, DHTTYPE);

const char* thingspeakHost = "184.106.153.149";
const int httpPort = 80;
char thingspeakKey[40];

void setup() {
  loadString(0, thingspeakKey);
  
  WiFiManager wifiManager;
  WiFiManagerParameter param("Thingspeak", "thingspeak key", thingspeakKey, 40);
  wifiManager.addParameter(&param);
  wifiManager.autoConnect("TempLogger");
  
  strcpy(thingspeakKey, param.getValue());
  saveString(0, thingspeakKey);
  
  dht.begin();
}

void loop() {
  float h = dht.readHumidity();
  float t = dht.readTemperature();
  sendData(t, h);
  delay(60000);
}

void sendData(float temp, float humidity) {
  
    WiFiClient client;
    if (client.connect(thingspeakHost, httpPort)) {
      // We now create a URI for the request
      String url = "/update?key=";
      url += thingspeakKey;
      url += "&field1=";
      url += temp;
      url += "&field2=";
      url += humidity;
      
      // This will send the request to the server
      client.print(String("GET ") + url + " HTTP/1.1\r\n" +
                   "Host: " + thingspeakHost + "\r\n" + 
                   "Connection: close\r\n\r\n");
    }
}

void saveString(int address, char* value) {
  EEPROM.begin(512);
  EEPROM.put(address, value);
  EEPROM.end();
}

void loadString(int address, char* buf) {
  EEPROM.begin(512);
  EEPROM.get(address, buf);
  EEPROM.end();
}

