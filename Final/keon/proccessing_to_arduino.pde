//Follow arduino example04.communication/SerialCallResponse

import processing.serial.*; //import the Serial library

Serial myPort; //the Serial port object


int backgroundColor; // Background color
int fgcolor;
int[] serialInArray = new int[3]; // Where we'll put what we receive
int swcolor;
int serialCount = 0; // A count of how many bytes we receive

boolean firstContact = false; // Whether we've heard from the microcontroller

void setup() {
size(600, 600); //make our canvas 600 x 600 pixels big

// initialize your serial port and set the baud rate to 9600

 myPort = new Serial(this, Serial.list()[0],9600);

}
void draw() {
background(255);
  fill(fgcolor);
    stroke(fgcolor, 255, 73);
  strokeWeight(swcolor);
   ellipse(300,300,50,50);
ellipse(swcolor,500,50,50);
ellipse(swcolor,200,50,50);
  strokeWeight(random(swcolor));
  fill(fgcolor,random(250),50);
ellipse(swcolor,100,50,50);
ellipse(swcolor,200,50,50);
//background(backgroundColor,255,12);

}
void serialEvent(Serial myPort) {
//put the incoming data into a String -
// read a byte from the serial port:
int inByte = myPort.read();
// if this is the first byte received, and it's an A, clear the serial
//buffer and note that you've had first contact from the microcontroller.
// Otherwise, add the incoming byte to the array:

 if (firstContact == false) {
 if (inByte == 'A') {
 myPort.clear();      // clear the serial port buffer

 firstContact = true; // you've had first contact from the microcontroller

 myPort.write('A');     // ask for more
 }
 }
 else {
 // Add the latest byte from the serial port to array:

 serialInArray[serialCount] = inByte;
 serialCount++;
 // If we have 2 bytes:
 if (serialCount > 2 ) {

 backgroundColor = serialInArray[0];
fgcolor = serialInArray[1];
 swcolor = serialInArray[2];
 // print the values (for debugging purposes only):

 println(backgroundColor + "/t" + fgcolor);
 // Send a capital A to request new sensor readings:

 myPort.write('A');
 // Reset serialCount:
 serialCount = 0;
 }
 }
}
