float y = 250;
float x = 250;
int speed = 1;

// Setup does not change
void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  move(); // Call on both functions
  display();
}


// A function to display the ball
void display() {
  strokeWeight(10);
  ellipse(x, y, 50, 50);
}

// A function to move the ball
void move() { 
  x = x + random(-2,2);
  y = y + random(-1,1);
}


