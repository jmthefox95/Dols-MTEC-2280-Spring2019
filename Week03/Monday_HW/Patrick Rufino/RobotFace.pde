//Patrick Rufino

int m;
float seconds = 0;


void setup(){
  size(600,600);
  frameRate(5);
}

void draw(){
  
  m = millis();  // milliseconds of Processing internal clock
  seconds = m/1000;  // gives the seconds of internal clock
  
  if(seconds == 2){
  noStroke();  
  fill(random(255),random(255), random(255));
  ellipse(150,150,200,200); 
}

  if(seconds == 4){
  noStroke();  
  fill(random(255),random(255), random(255));
  ellipse(450,150,200,200);  
}

  if(seconds == 6){
  noStroke();  
  fill(random(255),random(255), random(255));
  triangle(300,300, 350,350, 250,350);  
}

  if(seconds == 8){
  noStroke();  
  fill(random(255),random(255), random(255));
  ellipse(300, 500, 425, 125);  
}

  if(seconds == 10){
    fill(random(255),random(255), random(255));
    textSize(32);
    text("Hello,", 180, 500);
}

  if(seconds == 12){
    fill(random(255),random(255), random(255));
    textSize(32);
    text("Goodbye", 280, 500);
}

  if(seconds == 15){
  background(0,0,0);
}


 println(seconds);
}
