int ledPin = 13;  // LED on Pin 13 of Arduino
int pirPin = 2 ; // Input for HC-S501

int pirValue; // Place to store read PIR Value


void setup() {
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT);
  pinMode(pirPin, INPUT);
 
  digitalWrite(ledPin, LOW);

  
}

void loop() {
  // put your main code here, to run repeatedly:
  pirValue = digitalRead(pirPin);
  digitalWrite(ledPin, pirValue);
  
}
