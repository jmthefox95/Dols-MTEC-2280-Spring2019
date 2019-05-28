
int sensorPinr = A0;    // select the input pin for the potentiometer
int sensorPing = A2;
int sensorPinb = A4;

int ledPin = 11; // select the pin for the LED with a ~ <<< TILDA
int ledPin2= 10;
int ledPin3= 9;
int sensorRed = 0;  // variable to store the value coming from the sensor
int sensorBlue = 0;
int sensorGreen = 0;

void setup() {
  // put your setup code here, to run once:
  // declare the ledPin as an OUTPUT:
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
  }

void loop() {
  // put your main code here, to run repeatedly:
   // read the value from the sensor:
  sensorRed = analogRead(sensorPinr);
  sensorBlue = analogRead(sensorPinb);
  sensorGreen = analogRead(sensorPing);

  analogWrite(ledPin,sensorRed / 4); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255 
  analogWrite(ledPin2,sensorGreen / 4);
  analogWrite(ledPin3,sensorBlue / 4);
  
  Serial.println(sensorRed/4);
  Serial.println(sensorBlue/4);
  Serial.println(sensorGreen/4);


}
