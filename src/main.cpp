#include <Arduino.h>
#include <MQTT.h>
#include <PubSubClient.h>
#include <ESP8266WiFi.h>

const int buttonPin = 2;
const int pulldownPin = 0;
int buttonState = 0;
bool isLocked = false;
void setup_wifi(void);
void reconnect(void);

const char* ssid = "...";
const char* password = "...";
IPAddress MQTTserver(192, 168, 2, 100);
WiFiClient espClient;
PubSubClient client(espClient);

void setup() {
  Serial.begin(115200);
  Serial.println("Init");
  setup_wifi();
  client.setServer(MQTTserver, 1883);
  pinMode(buttonPin, INPUT);
  pinMode(pulldownPin, OUTPUT);
  digitalWrite(pulldownPin, LOW);
}

void setup_wifi() {
  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

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
    // Attempt to connect
    if (client.connect("ESP8266Client")) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      client.publish("/Home/Status/DoorLock", "1");
      // ... and resubscribe
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void loop() {
  delay(1000);

  if (!client.connected()) {
    reconnect();
  }

  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH) {
    Serial.println("Locked");
    if (isLocked == false) {
      client.publish("/Home/Data/DoorLock", "0");
      isLocked = true;
    }
  } else {
    if (isLocked == true) {
      client.publish("/Home/Data/DoorLock", "1");
      isLocked = false;
    }
  }
}