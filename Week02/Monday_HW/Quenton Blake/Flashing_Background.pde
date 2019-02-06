//Quenton Blake
//got help from patrick rufino
boolean OnOff = true;
float growth = 0.2;
float RecColor= 255;
float RecColor2= 255;
float x = random(80);
void setup(){
  size(1000,1000);
  
}

void draw() {
  background(0,0,0);
  RecColor = map(mouseX, 0, width, 0, x);
  RecColor2 = map(mouseY, 0, height, 0, x);
  strokeWeight(4);
  fill(0, RecColor2, RecColor,200);
  rect(0,0,1000,1000);
  fill(0,RecColor,RecColor2, 200);
  quad (200, 200, 400, 200, 600, 600, 200, 300);
  fill (RecColor,RecColor, RecColor2,200);  //sets fill color to yellow-green
  strokeWeight(4);
  fill (RecColor,RecColor, RecColor2,200);
  line (200,200,600,600);
  fill (RecColor,RecColor, RecColor2,200);
  line(400,200,200,300);
  
  if (mouseY>500) {  
    OnOff = false;
  }

  if (mouseY < 500) { 
    OnOff = true;
  }
  if (OnOff) {  

}

  if (!OnOff) { 
     x= random(150); random(200); random(0);
  }
}
