//Quenton Blake

int m;
float time = 0;


void setup(){
  size(800,800);
  frameRate(5);
  background(100);
}

void draw(){

  m = millis();  // millitime of Processing internal clock
  time = m/1000;  // gives the time of internal clock
  stroke (random(255), 100, mouseY/3); //uses mouseY location, divided by 3, to determine blue value of stroke color
  strokeWeight(mouseX/5);  //uses mouseX location, divided by 5, to determine strokeWeight
  line (mouseX, mouseY, pmouseX, pmouseY); //draws line between current mouse and previous mouse positions
 if(time == 12){
    clear();
}
 if(time == 15){
  noStroke();  
  fill(random(255),random(255), random(255));
  ellipse(650,350,400,400);  
}
if(time ==16){
  noStroke();  
  fill(random(255),random(255), random(255));
  ellipse(500, 500, 625, 325);  
}
 if(time == 18){
  noStroke();  
  fill(random(255),random(255), random(255));
  rect(800,300, 550,550);  
}
if(time == 22){
    clear();
}
if(time == 30){
  noStroke();  
  fill(random(255),random(255), random(255));
  rect(450,150,200,200);  
}
 if(time == 35){
    clear();
}
 println(time);
}
