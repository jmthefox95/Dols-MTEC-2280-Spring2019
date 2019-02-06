float radius = 0;
float colorVal= 255;
float colorVal2= 255;


void setup(){
  size(600,600);
  background(255,255,255);
  
}

void draw() {
  
  //background(255,255,255);
  
  radius = 2*(dist (300,300, mouseX, mouseY));
  colorVal = map(mouseX, 0, width, 0, 255);
  colorVal2 = map(mouseY, 0, width, 0, 255);
  
  noStroke();
  fill(0, colorVal2, colorVal,10);
  ellipse(300,300,radius,radius);
  
  //println(mouseX);
  println(colorVal);
}
