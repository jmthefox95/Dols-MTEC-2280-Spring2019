boolean OnOff = true;


void setup() {
  size(600, 600);
}

void draw() {
  background(255, 255, 255);

  if (mouseY > 300) {
    OnOff = false;
  }

  if (mouseY <  300) {
    OnOff = true;
  }

  ellipse (300, 300, 200, 200);
  noStroke();

  if (OnOff) {
    fill(255, 0, 0);
  }

  if (!OnOff) {
    fill(255, 255, 0);
  }

  println(OnOff);
}
