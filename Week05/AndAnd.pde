int l = 320;
int w = 200;

void setup() {
  size(480, 270);
}

void draw() {
  background(255);
  stroke(0);
  line(l, 0, l, 360);
  line(0, w, 640, w);

  noStroke();
  fill(0);
    
  if (mouseX < l && mouseY < w) {
    rect(0, 0, l, w);
  } else if (mouseX > l && mouseY < w) {
    rect(l, 0, l, w);
  } else if (mouseX < l && mouseY > w) {
    rect(0, w, l, w);
  } else if (mouseX > l && mouseY > w) {
    rect(l, w, l, w);
  }
}
