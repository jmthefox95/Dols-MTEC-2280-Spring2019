int counter = 0;
float seconds = 0;


void setup(){
}

void draw(){

  if (mousePressed){    
    counter++;  
    fill(255,0,0);
    delay(500);
  }
  
 
 if (counter ==10){  // reset your counter
   counter = 0;
 }
 
 println(counter);
}
