//KEON DEPRADINE

float harmX =0;
float harmY =0;
float harm =0;
float harm2 =0;
float phi =1;
float inc = TWO_PI/25.0;
boolean OnOff = true;   
void setup(){
  size(600,600);
  background(255,255,255);
background(0,0,0);


}

void draw(){
translate(300,300);
if (mouseY > 300){
OnOff = false;
}
  if (mouseY <  300) {  // if less than 300 the state is ON
    OnOff = true;
  }

 if (mousePressed == true) {
 rotate(phi);   // Larger orbit
   fill(random(255),random(255),random(255));
// for(int harmX = 0; harmX < 25; harmX++)
 stroke(0,0,0);
  ellipse(harmX , harmY, 6*5, 2+cos(phi)*10.0);  // change the x and y to have more interesting patterns.  Try adding a growth variable here
  //phi = phi + inc;
if (OnOff){
harmX = 80*cos(harm);   
 // harm++;
  harmY = 20*sin(harm2);
  
 harm = 3.10 + harm;
 
  harm2 = 0.00001 + harm2;
  
  phi = 1.02+ phi; //play with this to change harmonic rate

}else{
  
if (!OnOff){
   
  rotate(phi);   // Larger orbit
   fill((255),(255),(255));
for(int harmX = 0; harmX < 25; harmX++)
 stroke(0,0,0);
  ellipse(harmX , harmY, 6*5, 2+cos(phi)*10.0);  // change the x and y to have more interesting patterns.  Try adding a growth variable here
 phi = phi + inc;
 
  harmX = 180*cos(harm);   
 // harm++;
  harmY = 20*sin(harm2);
  
 harm = 3.10 + harm;
 
  harm2 = 0.00001 + harm2;
  
   phi = 8.02+ phi;
 
 }
}
}
}
