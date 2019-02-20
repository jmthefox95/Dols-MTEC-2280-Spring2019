int counter = 0;
float seconds = 0;
float grow=.01;
boolean flip = true;

void setup(){
size(400,400);

}


void draw(){

  if (mousePressed){    
    counter++; 
    
   ellipse(200,200, 50*grow,50*grow);
    fill(255,0,0);
    grow= grow+grow;
    delay(100);
    //background(255);
    
  }
  
 
 if (counter ==10){  // reset your counter
   background(255,255,255);
   //ellipse(200,200, 50,50);
   println("PoP");
   grow=.01;
   counter = 0;
   flip= true;
   println(flip);
 }
 
 
 if (counter>5);
 {
 ellipse(300,300,10,10);
 flip=true;
 }

 if (counter<5);
 {
   ellipse(100,100,10,10);
  flip=false;
 }

 
 
 
 println(counter);
 println(flip);
}
