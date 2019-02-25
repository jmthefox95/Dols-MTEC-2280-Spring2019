//Patrick Rufino

boolean OnOff = true;
float growth = 0.2;
float rate = 1;
float colorVal= 255;
float colorVal2= 255;

void setup(){
  size(600,600);
  
}

void draw() {
  background(0,0,0);
  colorVal = map(mouseX, 0, width, 0, 255);
  colorVal2 = map(mouseY, 0, height, 0, 155);
  noStroke();
  fill(0, colorVal2, colorVal,200);
  rect(0,0,600,600);
  
  fill(255,colorVal,0,50);
  quad(275+growth,250, 300,250, 275,400, 300-growth,400);
  
  fill(0,colorVal, colorVal2,200);
  quad(275+growth,20, 300,20, 275,200, 300-growth,200);
  
  fill(colorVal,colorVal, colorVal2,200);
  quad(275+growth,450, 300,450, 275,580, 300-growth,580);
  
  fill(colorVal2,colorVal2, colorVal2,colorVal);
  ellipse(150,50,0+growth/2,50);
  ellipse(150,50,0+growth/2,25);
    
  fill(colorVal,colorVal2, colorVal,colorVal);
  ellipse(150,275,0+growth/2,50);
  ellipse(150,275,0+growth/2,25);
  
  fill(colorVal,colorVal, colorVal,colorVal2);
  ellipse(150,475,0+growth/2,50);
  ellipse(150,475,0+growth/2,25);
  
  fill(colorVal2,colorVal, colorVal,colorVal2);
  ellipse(450,550,0+growth/2,50);
  ellipse(450,550,0+growth/2,25);
  
  fill(colorVal,colorVal, colorVal,colorVal);
  ellipse(450,375,0+growth/2,50);
  ellipse(450,375,0+growth/2,25);

  fill(colorVal2,colorVal, 155,colorVal);
  ellipse(450,170,0+growth/2,50);
  ellipse(450,170,0+growth/2,25);



  ////Simple mousePressed 
  if (mousePressed == true){
    rate = 2;
  }else{             //Try removing this else statement
    rate = 0;
  }

 
  
  
  growth = growth + rate;
}
