//keon depradine
// dols example
float radius = 0;
float colorVal= 255;
float colorVal2= 255;
int value = 0;

void setup(){
  size(800,800);
  background(255,255,255);
  
}

void draw() {

radius = 1.5*(dist (600,200, mouseX, mouseY));
 radius = 2*(dist (100,600, mouseX, mouseY));
 
  colorVal = map(mouseX, 0, width, 0, 255);
  colorVal2 = map(mouseY, 0, width, 0, 255);
  
  noStroke();
  fill(random(25), random(255),random(255),random(25));
  ellipse(mouseX,mouseY,radius,radius);
  
}
