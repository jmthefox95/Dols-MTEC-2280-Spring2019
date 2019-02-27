//keondepradine
//dols
//anthony 
float r = 2;
float r2 = 2;
void setup() {
  size(500, 500);
   background(23, 100, 240);
}

void draw() {
  noFill();

  // nested for loop
  for (int x = 0; x <= 500; x += 20) { 
    for (int y = 0; y<=500; y += 20) {

     
      float d = dist(mouseX, mouseY, x, y);

     
      if (d < 9) {
        fill(random(255));
      
       r=random(20);
     r2=random(20);
  
    
  } else {
     
      r=2;
      r2=2;
      fill(255);
     
    }

      ellipse(x, y, r, r2);
      
    }
  }
}
