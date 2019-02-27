void setup() {
  size(600, 600);
  background(255);
 frameRate(4);
}

void draw() {
  

  noFill();
  
  for (int r = 10; r <= 700; r += 50) { 
    for (int j = 10; j < 800; j = j+90) {
    quad(r +20, random(j), random(j), random(j), r +20, r + 10, r +20, r +20);
  }
  }
 }
