int r = 10;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  noFill();

  // nested for loop
  for (int x = 0; x <= 500; x += 20) { 
    for (int y = 0; y<=500; y += 20) {

      // find the distance from mouse point and ellipse radii
      float d = dist(mouseX, mouseY, x, y);

      // if the distance is less than r for an of the cirlces... color those cicles black
      if (d < 10) {
        fill(0);
      } else {
        fill(255);
      }

      ellipse(x, y, r, r);
      
    }
  }
}
