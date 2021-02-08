import processing.serial.*;


 
Serial myPort;
int linefeed = 10;   
int numSensors = 5;  
int sensors[];       
int pSensors[];      

 
String myString;
 
void setup() {
  size(1440, 1080);
 
  println(Serial.list());
 

 
  myPort = new Serial(this, Serial.list()[0], 9600);
  myPort.bufferUntil(linefeed);
}
 
void draw() {
 
  if (myString == "Motion Detected") {
    if (sensors[0] == 1){
      
      background(100,0,0);
 
    } else if (sensors[1] == 1) {
      background(0,100,0);
     
    } else if (sensors[2] == 1){
      background(0,0,100);
    
    } else if (sensors[3] == 1){
      background(0,100,100);
     
    } else if (sensors[4] == 1){
      background(100,100,0);
    }
  }
}
  
    
 


 
