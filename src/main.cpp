#include <Arduino.h>

const int buttonPin = 2;
const int pulldownPin = 0;
int buttonState = 0;

void setup() {
  Serial.begin(115200);
  Serial.println("Init");
  pinMode(buttonPin, INPUT);
  pinMode(pulldownPin, OUTPUT);
  digitalWrite(pulldownPin, LOW);
}

void loop() {
  delay(1000);
  Serial.println("Check");
  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH) {
    Serial.println("Lock");
  } else {
    Serial.println("Unlock");
  }
}