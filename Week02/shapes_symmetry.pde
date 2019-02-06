void setup() {
  size(600, 600);
}

void draw() {
  
  translate(300,300);
  noStroke();
  fill(196, 61, 255);

  beginShape();
  vertex(20, 20);
  vertex(40, 20);
  vertex(40, 40);
  vertex(60, 40);
  vertex(60, 60);
  vertex(40, 100);
  vertex(20, 60);
  endShape(CLOSE);
  
    beginShape();
  vertex(-20, 20);
  vertex(-40, 20);
  vertex(-40, 40);
  vertex(-60, 40);
  vertex(-60, 60);
  vertex(-40, 100);
  vertex(-20, 60);
  endShape(CLOSE);
  
  println(mouseX + ":"  + mouseY);
}
