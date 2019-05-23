int r = 10; // while loop needs a starting point.

void setup() {
  size(500, 500);
  background(255);
}

void draw() {

  translate(width/2, height/2);
  noFill();

  // original for loop
  //for (int r = 10; r <= 480; r += 20) { 
  //  ellipse(0, 0, r + 10, r + 10);
  //}

  // NEW while loop
  // r = radius 
  // for r starting at 10, increase by 10 every loop until you reach 300
  //

  while (r <= 480) { 
    ellipse(0, 0, r + 10, r + 10);
    r = r + 20;
  }
  
}

