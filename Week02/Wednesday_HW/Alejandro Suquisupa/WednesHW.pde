//Alejandro Suquisupa

void setup() {
  size(600,600);
 
}

void draw() {
  
  if (mousePressed) {
    background(random(255),random(255),random(255));
  }
  translate(300,300);
  noStroke();
  fill(255);
  
  beginShape();
  vertex(40,40);
  vertex(80,40);
  vertex(80,80);
  vertex(100,60);
  vertex(80,100);
  vertex(120,110);
  vertex(150,130);
  endShape(CLOSE);
  
  beginShape();
  vertex(-40,-40);
  vertex(-80,-40);
  vertex(-80,-80);
  vertex(-100,-60);
  vertex(-80,-100);
  vertex(-120,-110);
  vertex(-150,-130);
  endShape(CLOSE);
  
}
