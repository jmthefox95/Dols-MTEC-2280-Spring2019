//Quenton Blake
//Help from StaticloopExample.

float r = 20;

void setup() {
  size(800, 800);
  background(200);
}

void draw() {

  translate(width/20, height/20);
  noFill();

  while (r <= 780) { 
    rect(0, 0, r + 10, r + 10);
    r = r + 20;
  }
  
  
}




