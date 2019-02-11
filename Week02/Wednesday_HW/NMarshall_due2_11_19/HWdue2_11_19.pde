float harmX =0;
float harmY =0;
float harm =0;
float harm2 =0;
float phi =0;

void setup() {
  size(600, 600);
  background(172, 141, 186);
}

void draw() {
  //background(172, 141, 186); 
  //background(mouseY, 141, 186);
  
  pushMatrix();
  translate(300, 300);
  fill(191, 66, 244, 25);
  
  stroke(0, 0, 0);
  strokeWeight(1);
  
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  
  
  
  
  
  
  
  popMatrix();
  
  //ellipse(300,300,10,10);
  
 
  stroke(82, 24, 107);
  fill(111, mouseY/2, 150);
  strokeWeight(1);
  ellipse(300, 300, 40, 40);
  fill(0,0,0);
  stroke(66, 14, 89);
  strokeWeight(2);//pupil
  ellipse(300, 300, 20, mouseY/16);
  
  
   translate(300,300);
  rotate(phi);   // Larger orbit
  
  //ellipse(0,0,100,100);
  
  fill(115, mouseX, 150);
  ellipse(harmX, harmY, 15, 25);  // change the x and y to have more interesting patterns.  Try adding a growth variable here
  
  harmX = 160*cos(harm);   
  harmY = 2*sin(harm2);
  
  harm = 0.05 + harm;
  harm2 = 0.0001 + harm2;
  
  phi = 0.08+ phi; //play with this to change harmonic rate
  
  
  
  
}
