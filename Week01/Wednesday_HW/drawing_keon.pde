void setup() {
  size (800, 800);
  float back = random(2,200);
  float back2 = random(200,250);

  background (back, back2, 255);
}


void draw() {

  if (mousePressed == true){
  for (int i = 0; i < width; i++) {
    float r = random(1,255);
    stroke(r*2);
  strokeWeight(10);
  line(mouseX, mouseY, pmouseX, pmouseY);
 
}
  }
}
