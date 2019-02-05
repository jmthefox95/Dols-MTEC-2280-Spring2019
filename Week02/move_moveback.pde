boolean moveboolean = true;
int moveRate = 10;
int locationX = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255, 255, 255);

  ellipse(locationX, 300, 10, 10);
  
 if (locationX > 600){  //Does the ball exceed hit the right wall?
   moveboolean = false;
 }
 
 if (locationX < 0){  //Does the ball thie the left wall?
    moveboolean = true;
 }
 
  if (moveboolean == false){  // if the ball hits the right wall move the opposite direction...left
   moveRate = -5;
 }
 
  if (moveboolean == true){  // if the ball hits the left wall move the opposite direction... right
   moveRate = 5;
 }
 
  locationX = locationX+moveRate;
}
