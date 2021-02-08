//Follow arduino example 04.communication/SerialCallRespon

char val; // Data received from the serial port
int sensorPin = A0; //Potentiometer Pin
int sensorPin2 = A1; //Potentiometer Pin
int sensorValue = 0; //Potentiometer Value
int sensorValue2 = 0; //Potentiometer Value
int inByte = 0;

void setup()
{

//initialize serial communications at a 9600 baud rate

 Serial.begin(9600);
while (!Serial) {
 ; // wait for serial port to connect.Needed for native USB port only

 }
establishContact(); // send a byte to establish contact until receiver responds

}
void loop()
{
 
 sensorValue = analogRead(sensorPin) / 4; // map analog 0-1023 to 0-255
sensorValue2 = analogRead(sensorPin2)/ 4; // map analog 0-1023 to 0-255
//Serial.println("Hello, world!"); //send back a hello world


 Serial.write(sensorValue); // send the value of one potentiometer
Serial.write(sensorValue2); // send the value of one potentiometer
delay(50);
}
void establishContact() {
while (Serial.available() <= 0) {
 Serial.println("A"); // send a capital A
 delay(300);
 }
}
