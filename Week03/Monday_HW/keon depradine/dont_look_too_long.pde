int m;
float timeColor = 0;
float seconds = 0;


void setup(){
 frameRate(5);
size(600,600);
 background(200, 200, 200); 
}

void draw(){

  m = millis();  // milliseconds of Processing internal clock
  seconds = m/1000;  // gives the seconds of internal clock
  
  noStroke();  
  
  timeColor = m % 255;  // "Modulo" of m and 255.  Gives the remainder of m divided by 255.


 

   
   //ellipse(200,200,140,140);
   
  fill(timeColor);

//rect(200, 200, random(100), 100);
  rect(250, 375, random(100), 500);
  ellipse(290,370,random(180),180);

//rect(250, 375, random(100), 500);
 
 println(seconds);
}
