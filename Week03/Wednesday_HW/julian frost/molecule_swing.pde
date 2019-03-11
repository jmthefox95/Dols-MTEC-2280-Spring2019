// Example 6-8: Lines one at a time

 // No for loop here. Instead, a global variable.
int y = 0;

void setup() {
  size(400, 400);
  background(255);
  
  frameRate(12); 
}

void draw() {
 for (int i = 10; i >= 1; i-= 1) { 
  stroke(0);
  fill(random(255),random(255),random(255));
  ellipse(mouseX,mouseY,y*.1,y*.1); 
y += 1;
stroke(10);
line(200,200,mouseX,mouseY);
  
  if (y > 100) {
    y = 0;
    //background(255);
  }
}
}
