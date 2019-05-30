import processing.serial.*; //import the Serial library
import guru.ttslib.*;
Serial myPort;  //the Serial port object
String val;
//float val2;
// since we're doing serial handshaking, 
// we need to check if we've heard from the microcontroller
boolean firstContact = false;

TTS tts;

void setup() {
  size(200, 200); //make our canvas 200 x 200 pixels big
  //  initialize your serial port and set the baud rate to 9600
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.bufferUntil('\n'); 
  tts = new TTS();
}

void draw() {
  //we can leave the draw method empty, 
  //because all our programming happens in the serialEvent (see below)

  float val2 = float(val);
  if (val2 > 42 && val2 < 50) {
    tts.speak("Can you please tell me where you are going");
delay(700);

    println("help me");
  } 
  { 
    if (val2 > 51 && val2 < 63) {
      tts.speakLeft("I only wanted to be your friend");
      delay(700);
    }
     if (val2 > 30 && val2 < 40) {
      tts.speakRight("I only wanted to be your man");
      delay(700);
     }
         if (val2 > 30 && val2 < 40) {
      tts.speak("But why?");
      tts.Pitch(1000);
      delay(700);
         }
  }
  println(val2);
}

void serialEvent(Serial myPort) {
  //put the incoming data into a String - 
  //the '\n' is our end delimiter indicating the end of a complete packet
  val = myPort.readStringUntil('\n');
  //make sure our data isn't empty before continuing
  if (val != null) {
    //trim whitespace and formatting characters (like carriage return)
    val = trim(val);
    println(val);


    //look for our 'A' string to start the handshake
    //if it's there, clear the buffer, and send a request for data
    if (firstContact == false) {
      if (val.equals("A")) {
        myPort.clear();
        firstContact = true;
        myPort.write("A");
        println("contact");
      }
    } else { //if we've already established contact, keep getting and parsing data
      println(val);

      if (mousePressed == true) 
      {                           //if we clicked in the window
        myPort.write('1');        //send a 1
        println("1");
      }

      // when you've parsed the data you have, ask for more:
      myPort.write("A");
    }
  }
}
