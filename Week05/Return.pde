void setup() {
  size(480, 270);
}

void draw() {
  background(255);
  stroke(0);

  float b = difference(5, 2);
  //fill(d*3, d*2, d);
  //ellipseMode(CENTER);
  //ellipse(width/2, height/2, 100, 100);
  
  println(b);
  
}

float difference(float x, float y) {
  float a = x - y;
  return a;
}
