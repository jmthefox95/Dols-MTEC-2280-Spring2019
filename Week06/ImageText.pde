PFont f;  
PImage img;

void setup() {
  size(600, 400);

  // Images must be in the "data" directory
  img = loadImage("img.png");
  //f = createFont("Ariel", 40);
}

void draw() {
  image(img, 0, 0);
  image(img, 0, 0, width, height);

  //textFont(f, 16); // Step 4: Specify font to be used
  fill(255);  // Step 5: Specify font color
  textSize(50);
  textAlign(CENTER, CENTER);
  text("SKY", width/2, height/2);
}
