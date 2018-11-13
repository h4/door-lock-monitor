#include <Arduino.h>
#include <MQTT.h>
#include <PubSubClient.h>
#include <ESP8266WiFi.h>
#include "connection.h"

const int ledPin = 0;
const int rxPin = 3;
int buttonState = 0;
bool isLocked = false;

void setup_wifi(void);
void reconnect(void);

IPAddress MQTTserver;
WiFiClient espClient;
PubSubClient client(espClient);
const char* stateTopic = "home/binary_sensor/entrance_lock/state";
const char* configTopic = "home/binary_sensor/entrance_lock/config";

void setup() {
  Serial.begin(115200, SERIAL_8N1, SERIAL_TX_ONLY);
  Serial.println("Init");
  setup_wifi();
  MQTTserver.fromString(MQTT_SERVER);
  client.setServer(MQTTserver, 1883);
  pinMode(ledPin, OUTPUT);
  pinMode(rxPin, INPUT_PULLUP);
  digitalWrite(ledPin, LOW);
}

void setup_wifi() {
  delay(10);
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(SSID);

  WiFi.mode(WIFI_STA);
  WiFi.begin(SSID, PASSWORD);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void reconnect() {
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    if (client.connect("ESP8266Client")) {
      Serial.println("connected");
      client.publish(configTopic, "{\"name\": \"Entrance Lock\", \"device_class\": \"lock\"}");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      delay(5000);
    }
  }
}

void loop() {
  delay(1000);

  if (!client.connected()) {
    reconnect();
  }

  buttonState = digitalRead(rxPin);
  Serial.println(buttonState);
  if (buttonState == HIGH) {
    if (isLocked == false) {
      client.publish(stateTopic, "OFF");
      isLocked = true;
      digitalWrite(ledPin, HIGH);
    }
  } else {
    if (isLocked == true) {
      client.publish(stateTopic, "ON");
      isLocked = false;
      digitalWrite(ledPin, LOW);
    }
  }
}