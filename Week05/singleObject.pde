void setup() {
  size(480, 270);
  // Initialize Object 
  myBall = new Ball();
}

void draw() {
  background(255);
  myBall.move(); 
  myBall.display();
}

// Define a class outside of setup and draw.
class Ball { 
  // Variables.
  color c; 
  float xpos;
  float ypos;
  float speed;

  // Constructor.
  Ball() { 
    c = color(175);
    xpos = 0;
    ypos = height/2;
    speed = 1;
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
