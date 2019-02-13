float object = 0;
float colorVal= 255;
float colorVal2= 250;

void setup(){
 size(700,700);
 background(255);
}

void draw(){
 object = 1*(dist(200,200,mouseX,mouseY));
 colorVal = map(mouseX,0,width,0,255);
 colorVal2 = map(mouseY,0,width,0,250);

 noStroke();
 fill(0,colorVal2,colorVal,4);
 rect(object,object,object,object,object,object,object,object);

 println(colorVal);
}
