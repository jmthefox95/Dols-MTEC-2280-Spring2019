void setup(){  
  size(400,400);
  frameRate(120);
}

void draw() {
  
float m = millis();
float s=m/1000;
float move =120;
move= move % s;

  println("Seconds:", s, ";", move);
  stroke(10);
  rect(move,move,300,300);
  
}
