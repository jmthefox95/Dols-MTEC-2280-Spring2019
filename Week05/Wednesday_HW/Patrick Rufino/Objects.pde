//Patrick Rufino

Ball Ball1; //Circles
Ball Ball2;
Ball Ball3;
Ball Ball4; 
Ball Ball5;
Ball Ball6;
Ball Ball7;
Ball Ball8;
Ball Ball9;

void setup() {
  size(600, 600);
  Ball1 = new Ball(300, 300, 300, 300);
  Ball2 = new Ball(300, 150, 50, 50);
  Ball3 = new Ball(300, 450, 50, 50);
  Ball4 = new Ball(450, 300, 50, 50);
  Ball5 = new Ball(150, 300, 50, 50);
  Ball6 = new Ball(0, 0, 550,550);
  Ball7 = new Ball(0, 600, 550, 550);
  Ball8 = new Ball(600, 0, 550, 550);
  Ball9 = new Ball(600, 600, 550, 550);
}

void draw() {
  background(255);
  frameRate(2);
  Ball1.display();
  Ball2.display();
  Ball3.display();
  Ball4.display();
  Ball5.display();
  Ball6.display();
  Ball7.display();
  Ball8.display();
  Ball9.display();
}

// Define a class outside of setup and draw.
class Ball { 
  // Variables.
  float xpos;
  float ypos;
  float size1;
  float size2;
  float w;
  float h;

  // Constructor.
  Ball(float IndyXpos, float IndyYpos, float size1, float size2) { 
    xpos = IndyXpos;
    ypos = IndyYpos;
    w = size1;
    h = size2;
  }

  // Function
  void display() { 
    fill(random(255), random(255), random(255));
    ellipse(xpos, ypos, w, h);
  }
}
