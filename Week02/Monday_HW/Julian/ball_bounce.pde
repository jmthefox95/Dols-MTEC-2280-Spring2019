//julian Frost

boolean growboolean = true;  // boolean starts as true to grow
int growRate = 1;
int diameter = 0;
float ball = color (255, 170, 0);

void setup() {
  size(600, 400);
}

void draw() {
  background(109, 73, 1);
  fill(255, 170, 0);
  ellipse(mouseX, mouseY, diameter, diameter);  

  if (mousePressed) {  //  if the ball grows to 300 change boolean to false
    growboolean= false;
    growRate = growRate-100;
  }

  if (diameter < 0) {  // if the ball shrinks to 0 change boolean to true
    growboolean = true;
  }
  if (diameter > 100) {  // if the ball shrinks to 0 change boolean to true
    //growboolean = false;
    fill (109, 73, 1);
    ellipse (mouseX, mouseY, 10000, 1000);
  }

  // if (growboolean == false){  // if boolean is false shrink the ball
  //  growRate = -2;
  //}

  if (growboolean == true) {  // if boolean is true make the ball grow
    growRate = 2;
  }

  diameter = diameter+growRate;
}
