
Ball Ball1; // Declare car object as a globle variable.
Ball Ball2;

void setup() {
  size(480, 270);
  // Initialize Objects
  Ball1 = new Ball(100, 0, 50, 1);
  Ball2 = new Ball(0, 0, 25, 3);
}

void draw() {
  background(255);
  Ball1.move(); 
  Ball1.display();
  Ball2.move(); 
  Ball2.display();
}

// Define a class outside of setup and draw.
class Ball { 
  // Variables.
  color c; 
  float xpos;
  float ypos;
  float speed;

  // Constructor.
  Ball(int IndyColor, float IndyXpos, float IndyYpos, float IndySpeed) { 
    c = IndyColor;
    xpos = IndyXpos;
    ypos = IndyYpos;
    speed = IndySpeed;
  }

  // Function
  void display() { 
    stroke(0);
    fill(c);
    ellipse(xpos, ypos, 30, 30);
  }

  // Function (Update)
  void move() { 
    xpos = xpos + speed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
