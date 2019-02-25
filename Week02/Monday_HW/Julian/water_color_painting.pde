//julian frost

float radius = 0;
float colorVal= 255;
float colorVal2= 255;
float colorVal3= 255;
int mousewtf;
boolean fade = true;
void setup(){
  size(600,600);
  background(255,255,255);
  
}

void draw() {
  
  //background(255,255,255);
  
  //mousewtf= (mouseX+mouseY);
  mousewtf= (255);
  
  radius = 2*(dist (100,100,mouseX,mouseY));
  colorVal = map(mouseX, 0, width, 0, 255);
  colorVal2 = map(mouseY, 0, width, 0, 255);
  colorVal3 = map(mousewtf,0,width,0,255);
  
  noStroke();
  fill(colorVal3, colorVal2, colorVal,50);
  ellipse(mouseX,mouseY,10,10);
  
  if(fade == true)
  {
    
    if(mousePressed)
    {
    fill(colorVal3+50, colorVal2+50, colorVal+50);
    background(0,0,0);
    }
  }
  //println(mouseX);
  println(colorVal);
}
