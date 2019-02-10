void setup() {
  size(600, 600);
}

void draw() {
  background(147, 160, 123); 
  
  rectMode(CENTER);
  
  pushMatrix();
  translate(300, 300);
  fill(0, 0, 255, 10);
  
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);
  
  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  rotate(2*PI/12);
  rect(0, 100, 100, 100);

  popMatrix();
  
  ellipse(300,300,10,10);
}
