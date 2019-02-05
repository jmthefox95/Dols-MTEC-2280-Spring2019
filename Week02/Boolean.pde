boolean OnOff = true;   // Also known for use in "STATE CHANGE"


void setup() {
  size(600, 600);
}

void draw() {
  background(255, 255, 255);

  if (mouseY > 300) {  // if greater than 300 the state is OFF
    OnOff = false;
  }

  if (mouseY <  300) {  // if less than 300 the state is ON
    OnOff = true;
  }

  ellipse (300, 300, 200, 200);
  noStroke();

  if (OnOff) {  // when the state is ON, fill RED
    fill(255, 0, 0);
  }

  if (!OnOff) {  // when the state is OFF, fill YELLOW
    fill(255, 255, 0);
  }

  println(OnOff);
}
