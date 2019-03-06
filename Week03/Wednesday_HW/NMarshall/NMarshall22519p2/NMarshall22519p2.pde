//Naomi Marshall
//This one also might be hard to look at for some
//I'm honestly kinda tired making this so it's not as interesting as I'd like

int n = 100;
float r = 10;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  noFill();
  rectMode(CENTER);

  // nested for loop
  for (int x = 0; x <= 500; x += 20+r) { 
    for (int y = 0; y<=500; y += 20+r) {

      
      // find the distance from mouse point and ellipse radii
      float d = dist(mouseX+random(80), mouseY+random(80), x, y);

      // if the distance is less than r for an of the cirlces... color those cicles black
      if (d < 80) {
        fill(mouseY/3, mouseX/3, random(100,255));
        
        
        
        
      } else {
        fill(mouseX/2,mouseY/2,random(100,200), random(100,150));
      }

      rect(x, y, r+random(10), r+random(10));
      print(r);
    }
  }
}
