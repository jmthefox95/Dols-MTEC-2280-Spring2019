void setup() {
  size(480, 270);
}

void draw() {
  background(255);
  stroke(0);

  float b = difference(5, 2);
  float c = difference(10, 4);
  
  print(b);
  println(c);
}

float difference(float x, float y) {
  float a = x - y;
  return a;
}
