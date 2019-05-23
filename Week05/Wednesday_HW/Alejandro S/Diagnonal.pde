// Alejandro Suquisupa

Ball Ball1;
Ball Ball2;

void setup() {
  size(600,600);
  Ball1 = new Ball(75, 100, 25, 3);
  Ball2 = new Ball(0,300,20, 2);
}

void draw() {
  background(255);
  Ball1.move();
  Ball1.display();
  Ball2.move();
  Ball2.display();
}

class Ball {
  color c;
  float xpos;
  float ypos;
  float speed;
  
  Ball(int IndyColor, float IndyXpos, float IndyYpos, float IndySpeed) {
    c = IndyColor;
    xpos = IndyXpos;
    ypos = IndyYpos;
    speed = IndySpeed;
  }
  
  void display() {
    stroke(0);
    fill(c);
    ellipse(xpos,ypos, 30, 30);
  } 
    void move() {
      ypos = ypos + speed;
      if (ypos > width) {
        ypos = 0;
      }
    xpos = xpos + speed;
    if (xpos > width) {
      xpos = 0;
    }
   }
}
