//keon depradine
//dols example 
boolean OnOff = true;   
float move =0.2;


void setup() {
  size(600, 600);
}

void draw() {
  background(255, 255, 255);

  if (mouseY > 300) {  
    OnOff = false;
  }

  if (mouseY <  300) { 
    OnOff = true;
  }
strokeWeight(4);
 line(mouseX, mouseX, mouseY + move, mouseY + move);
 move++;

  if (OnOff) {  
 
}

  if (!OnOff) { 
        stroke(random(242),random(255),random(0));
  }
move=move+0.2;
  println(OnOff);
}
