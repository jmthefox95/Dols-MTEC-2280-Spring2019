import processing.serial.*; //import the Serial library
 Serial myPort;  //the Serial port object
 String val;
 boolean firstContact = false;

PImage img;

void setup(){
  background(0);
  size(1000,600);
  img = loadImage("finger.png");
  frameRate(60);
  
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.bufferUntil('\n'); 
}

void draw(){  
  Piano();
  //fill(255, 0, 0);
  
  textSize(32);
  fill(255, 0, 0);
  text('C', 140, 450);
  
  textSize(32);
  fill(255, 0, 0);
  text('C', 840, 450);
  
  textSize(32);
  fill(59, 255, 5);
  text('D', 240, 450);
  
  textSize(32);
  fill(135, 142, 25);
  text('E', 340, 450);
  
  textSize(32);
  fill(255, 0, 0);
  text('F', 440, 450);
  
  textSize(32);
  fill(59, 255, 5);
  text('G', 540, 450);
  
  textSize(32);
  fill(135, 142, 25);
  text('A', 640, 450);
  
  textSize(32);
  fill(0);
  text('B', 740, 450);
  
  image(img, mouseX - 75, mouseY - 20);
  
  //println(mouseX, mouseY);
}

void Piano(){
  fill(240);
  strokeWeight(3);
  rectMode(CENTER);
  rect(500, 300, 800, 400, 0, 0, 50, 50);
  
  for(int i = 200; i < 1000; i = i + 100){
    line(i, 100, i, 500);
    ellipse(i - 50, 440, 75, 75); 
  }
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
  }
   else{ //if we've already established contact, keep getting and parsing data
    println(val);

    if (mousePressed && mouseX > 100 && mouseX < 200 && mouseY > 100 && mouseY < 500) 
    {                           //if we clicked in the window
      myPort.write('C');        //send a 1
      println("C");
    }
    
    if (mousePressed && mouseX > 200 && mouseX < 300 && mouseY > 100 && mouseY < 500) 
    {                           //if we clicked in the window
      myPort.write('D');        //send a 1
      println("D");
    }
    
    if (mousePressed && mouseX > 300 && mouseX < 400 && mouseY > 100 && mouseY < 500) 
    {                           //if we clicked in the window
      myPort.write('E');        //send a 1
      println("E");
    }
    
    if (mousePressed && mouseX > 400 && mouseX < 500 && mouseY > 100 && mouseY < 500) 
    {                           //if we clicked in the window
      myPort.write('F');        //send a 1
      println("F");
    }
    
    if (mousePressed && mouseX > 500 && mouseX < 600 && mouseY > 100 && mouseY < 500) 
    {                           //if we clicked in the window
      myPort.write('G');        //send a 1
      println("G");
    }
    
    if (mousePressed && mouseX > 600 && mouseX < 700 && mouseY > 100 && mouseY < 500) 
    {                           
      myPort.write('a');        
      println("A");
    }
    
    if (mousePressed && mouseX > 700 && mouseX < 800 && mouseY > 100 && mouseY < 500) 
    {                           //if we clicked in the window
      myPort.write('B');        //send a 1
      println("B");
    }
    
    if (mousePressed && mouseX > 800 && mouseX < 900 && mouseY > 100 && mouseY < 500) 
    {                           //if we clicked in the window
      myPort.write('H');        //send a 1
      println("C2");
    }
    // when you've parsed the data you have, ask for more:
    myPort.write("A");
    }
  }
}
