//AlishaF

int counter = 0;
float seconds = 0;


void setup(){
  size(500,500);
  background (6,115,90);
}

void draw(){

ellipse(250,200,60,200);

  if (mousePressed){    
    counter++;  
    fill(55,90,0);
    delay(100);
  println(" press and hold");

  }
  
 
 if (counter ==10){  // reset your counter
   counter = 0;
 }
 
 println(counter);

}
