float growth = 0.1;
float rate = 1; // speed of growth

void setup(){
  size(600,600);
   background(0,0,0);
  
}

void draw() {
  
  //background(0,0,0);
  //fill(255,255,255,10); // Fun Halo effects
  ellipse(300,300,growth+100,growth+100);
  
  ////Simple mousePressed 
  if (mousePressed){
    rate = -1;
  }else{             //Try removing this else statement
    rate = 1;
  }
  
  growth = growth + rate;
}
