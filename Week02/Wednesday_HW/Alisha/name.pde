//Alisha F

float r;
float b;
void setup() {
  size(600, 600);
  frameRate(5);
}

void draw() {

  background(r, b, 50);
  // background(0, 0, 123);
  r = random(50, 150);
  b = random (0,255);
  
println(r);
 
  rectMode(CENTER);

  pushMatrix();
  translate(300, 300);
  fill(0, 0, 0, 5);




  ellipse(0, 100, 100, 100); //bottom circle
  stroke(255, 255, 255);
  strokeWeight(10);



  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);

  ellipse(0, 100, 100, 100); //left circle

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100); //no

  rotate(2*PI/12);
  ellipse(0, 100, 100, 100); //top

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  ellipse(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  popMatrix();
}
