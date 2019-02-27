//Alejandro Colmenares


boolean button = false;
boolean buttonRound = false;

float d;

int x;
int y = 250;
int w = 150;
int h = 80;
int c = 0;
int c2 = 255;

void setup() {
  size(400, 520);
  x = 130;
}

void draw() {


  background(100);

  d = dist(mouseX, mouseY, x, y);

  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed) {
    button = !button;
    delay(100);
  }

  if (d<25 && mousePressed) {
    buttonRound = !buttonRound;
    delay(100);
  }

  if (button) {
    //background(50);
    stroke(0);
    fill(255);
    ellipse(x, y, 50, 50);
    //buttonRound = !buttonRound;
  } else {
    //noFill();
    //noStroke();
    //background(100);
    //stroke(255);
  }

  if (!buttonRound) {
    //background(50);
    stroke(0);
    fill(255);
    rect(x, y, w, h);
    //button = !button;
  } else {

  }
  
}

