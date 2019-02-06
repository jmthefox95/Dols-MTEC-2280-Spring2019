
boolean growboolean = true;  // boolean starts as true to grow
int growRate = 2;
int diameter = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255, 255, 255);

  ellipse(300, 300, diameter, diameter);  
  
 if (diameter > 300){  //  if the ball grows to 300 change boolean to false
   growboolean= false;
 }
 
 if (diameter < 0){  // if the ball shrinks to 0 change boolean to true
    growboolean = true;
 }
 
  if (growboolean == false){  // if boolean is false shrink the ball
   growRate = -2;
 }
 
  if (growboolean == true){  // if boolean is true make the ball grow
   growRate = 2;
 }
 
  diameter = diameter+growRate; 
}
