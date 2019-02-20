void setup() {
  size(600, 600);
  background(255);
}

void draw() {
 
  noFill();
  
  for (int r = 10; r <= 300; r += 10) { 
    ellipse(0, 0, r + 100, r + 100);
    ellipse(600, 0, r + 100, r + 100);
    ellipse(0, 600, r + 100, r + 100);
    ellipse(600, 600, r + 100, r + 100);
    ellipse(300, 300, 200 + r, r + 5);
    ellipse(300, 300, 500, r + 95);
  }
}
