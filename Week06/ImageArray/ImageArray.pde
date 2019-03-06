int imageIndex = 0; // Initial image to be displayed is the first

// Declaring an array of images.
PImage[] images = new PImage[3]; 

void setup() {
  size(200, 200);

  // Loading the images into the array
  // Don't forget to put the JPG files in the data folder!
  for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage(i + ".png" );
  }
}

void draw() {
  // Displaying one image
  image(images[imageIndex], 0, 0, width, height);
}

void mousePressed() {

  imageIndex = imageIndex+1;

  if (imageIndex == 3) {
    imageIndex =0;
  }
}
