//Three blocks of code. void setup(), void draw(), and void mousePressed().

void setup() {
  //Size of the window & background 
  size (800, 800);
  background (255);
}
// Set an integer variable.
int colorvalue=255;

void draw() {
  //A circle is following me :0
  stroke(91, 5, 5);
  strokeWeight(3);
  //The value of the variable will color the circle that's following me
  fill(colorvalue);
  //The cursor is the circle
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY, 50,50);
 
  
}
void mousePressed() {
  //Press the mouse to change the color of the circle to black or back to white
  if (colorvalue== 255){
    colorvalue=0;
  } else {
    colorvalue = 255;
  }
}
