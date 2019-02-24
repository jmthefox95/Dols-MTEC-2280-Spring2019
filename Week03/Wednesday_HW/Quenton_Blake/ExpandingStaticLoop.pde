//Quenton Blake
//Help from StaticloopExample.

float r = 20;
float growth=0;
float seconds = 0;

void setup() {
  size(800, 800);
  background(200);
  frameRate(5);
}

void draw() {
seconds = millis() / 1000;
    
  if(seconds < 6){
    noFill();
  translate(width/20, height/20);
  while (r <= 780) { 
    rect(0 - growth, 0 - growth, r + 10 - growth, r + 10 - growth);
    r = r + 20;
  }
  
  growth= millis()/10;
}




}
