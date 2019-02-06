//Quenton Blake

float hamburgerX = 300; //variables for the width of the circle.
float hamburgerY = 300; //variables for the height of the circle.
float growX= 0;
float moveR=0;
float moveT=0;
float r= 0;
float g=0;
float b=0;
void setup() {
  size (1500, 1500);
}


void draw() {
  background (0, 0, 0);
  fill (34, 194, 34);
   line (mouseX, mouseY, pmouseX, pmouseY);  
  stroke (255, 180, mouseY/3); 
  strokeWeight(mouseX/5); 
  line (mouseX, mouseY, pmouseX, pmouseY); 
  rect(0 + moveR, hamburgerX/3, 100, 100);
  
  fill (198, 30, 150);
  ellipse(0 + moveT, hamburgerX/1, growX+hamburgerX, 150);
  
  quad(0+moveT, 5+moveT, 1+moveR, 50, 0+moveR, 3+moveR, 0+moveR, 6+moveT);
  
   fill(255);
   stroke (10, 255, 235);  //sets stroke color
  strokeWeight (8);   //sets stroke weight to 8 pixels wide
  
  line (750, 0, 760, 1300);
  
  moveR= moveR+5;
  moveT= moveT+2;
  growX= 0;
}
