//Alisha F
boolean OnOff = true;   // Also known for use in "STATE CHANGE"


void setup() {
  size(600, 600);
}

void draw() {
background(0, 0, 0);

  if (mouseX > 50) {  // if greater than 50 the state is OFF
    OnOff = false;
  }

  if (mouseX <  50) {  // if less than 50 the state is ON
    OnOff = true;
  }
 

  if (mouseY > 360) {  // if greater than 360 the state is OFF
    OnOff = false;
  }

  if (mouseY <  360) {  // if less than 360 the state is ON
    OnOff = true;
  }

square(200, 250, 505);
fill(2, 2, 90);
//triangle(30, 75, 58, 20, 86, 75);
//fill(25, 72, 90);
//triangle(30, 75, 58, 90, 86, 75);
  //noStroke();

//square(90, 20, 55);
//fill(2, 2, 90);

// X AXIS
if (OnOff) {  // when the state is ON, fill YELLOW
    fill(246, 249, 69);
  }

  if (OnOff) {  // when the state is OFF, fill BLUE
    fill (14, 7, 239);
  }

// Y AXIS works
 if (OnOff) {  // when the state is ON, fill GREEN
    fill(66, 244, 128);
  }

  if (!OnOff) {  // when the state is OFF, fill PURPLE
    fill(119, 7, 239);
  }
  println(OnOff);
}



// Y AXIS WORKS BUT NOT THE X AXIS
