import processing.serial.*; //import the Serial library

 Serial myPort;  //the Serial port object
 
  float x;           // x cord
  float y;           // y cord          
  int[] serialInArray = new int[2];    // Where we'll put what we receive
  int serialCount = 0;                 // A count of how many bytes we receive
  boolean firstContact = false;        // Whether we've heard from the microcontroller
  
  float x2;
  float y2;

  
  float px2;
  float py2;
  // int serialCount2 = 0; 

                  // A count of how many bytes we receive
  
void setup() {
  background(255, 255 , 255);
  size(700, 700); //make our canvas 500 x 500 pixels big
  //  initialize your serial port and set the baud rate to 9600
  myPort = new Serial(this, Serial.list()[0], 9600);

 
}

void draw() {
 fill(0,0,0);
 x2= map(x, 0 ,255 ,0 ,700 );
 y2= map(y, 0 ,255 ,0 ,700 );
  //ellipse(x2, y2, 5, 5);
  //stroke(0,0,0, 200);
  //line(px2,py2,x2,y2);
  
  stroke(125, 66, 244, 200);
  line(px2,py2,x2,y2);
  stroke(244, 66, 89, 133);
  line(px2+5,py2,x2+5,y2);
  stroke(56, 132, 255, 133);
  line(px2-5,py2,x2-5,y2);
  
if (keyPressed == true) {
  background(255, 255 , 255);
}
  //stroke(random(0,255),random(0,255),random(0,255), 200);
  //line(px2,py2,x2,y2);
  //stroke(random(0,255), random(0,255), random(0,255), 133);
  //line(px2+5,py2,x2+5,y2);
  //stroke(random(0,255), random(0,255), random(0,255), 133);
  //line(px2-5,py2,x2-5,y2);
  
  px2= x2;
  py2= y2;
}

void serialEvent(Serial myPort) {
//put the incoming data into a String - 
// read a byte from the serial port:
    int inByte = myPort.read();
    // if this is the first byte received, and it's an A, clear the serial
    // buffer and note that you've had first contact from the microcontroller.
    // Otherwise, add the incoming byte to the array:
    if (firstContact == false) {
      if (inByte == 'A') {
        myPort.clear();          // clear the serial port buffer
        firstContact = true;     // you've had first contact from the microcontroller
        myPort.write('A');       // ask for more
      }
    }
    else {
      // Add the latest byte from the serial port to array:
      serialInArray[serialCount] = inByte;
      serialCount++;

//      serialInArray2[serialCount2] = inByte;
//      serialCount2++;
      // If we have 3 bytes:
      if (serialCount > 1 ) {
        x = serialInArray[0];
        y = serialInArray[1];

        // print the values (for debugging purposes only):
        println(x + "\t" + y);

        // Send a capital A to request new sensor readings:
        myPort.write('A');
        // Reset serialCount:
        serialCount = 0;
    }
  }
}
