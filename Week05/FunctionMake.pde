void setup() {
}

void draw() {
  background(255);
  drawCircle();  // call on function in your draw loop
}

void drawCircle() {  //make function outside of your draw loop
  noFill();
  ellipse(50,50,20,20);
}
