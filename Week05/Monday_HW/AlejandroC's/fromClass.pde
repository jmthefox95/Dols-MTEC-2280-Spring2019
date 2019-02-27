//Alejandro Colmenares

boolean button = false;

int x = 130;
int y = 250;
int w = 150;
int h = 80;
int c = 0;
int c2 = 255;

void setup() {
  size(400, 520);
}

void draw() {
  
  background(100);
  
  pushMatrix();
  fill(255);
  rect(x,y,w,h);
  popMatrix();
  

  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed) {
    button = !button;
    delay(100);
  }

  if (button) {
    //background(50);
    ellipse(x, y, 50, 50);
    stroke(0);
  } else {
    //background(100);
    stroke(255);
  }

  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    //fill(0,255,0);
  } else {
    //fill(0,255,0);
    stroke(255);
  }


  if (mouseX <= x && mouseY >= y && mousePressed) {
    button = !button;
    delay(100);
  }
}
