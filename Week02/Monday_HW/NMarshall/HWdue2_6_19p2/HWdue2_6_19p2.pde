//Naomi Marshall
//Pretty Circles
//I like the colors
float growth = 0.1;
float rate = 1; // speed of growth

void setup(){
  size(600,600);
   background(0,0,0);
  
}

void draw() {
  
  //background(0,0,0);
  //fill(155,mouseX,mouseY,10); // Nice colors
  ellipse(mouseX,mouseY,growth+50,growth+50);
  
  ////Simple mousePressed 
  if (mousePressed){
    rate = -1;
    fill(155,mouseX,mouseY,10);
  }else{             
    rate = 1;
    fill(215,mouseX,mouseY,10);
  }
  
  growth = growth + rate;
}
