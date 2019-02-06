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
  fill(255,0,0,50);
  ellipse(300,300,growth+50,growth+50);
  ellipse(300,300,growth+100,growth+100);
  fill(0,colorVal, colorVal2,200);
  ellipse(50+growth, 50, 50,50);
  fill(colorVal,colorVal, colorVal2,200);
  ellipse(550, 50 + growth, 50,50);
  fill(colorVal2,colorVal2, colorVal2,colorVal);
  ellipse(50, 550 - growth, 50, 50);
  fill(colorVal,colorVal2, colorVal,colorVal);
  ellipse(550 - growth, 550, 50, 50);
  fill(colorVal,colorVal, colorVal,colorVal);
  ellipse(300,300,growth+10, growth+50);
  fill(colorVal2,colorVal, colorVal,colorVal2);
  ellipse(300,300,growth+50, growth+10);
 
  if (mousePressed == true){
    rate = 2;
  }else{             //Try removing this else statement
    rate = 0;
  }
  
  if(mouseButton == RIGHT){
    rate = -2;
  }
    
  growth = growth + rate;
}
