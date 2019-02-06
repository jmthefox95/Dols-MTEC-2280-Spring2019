// Maurice_Burt 

float t;
float o;
float p;
float h; 
float a;
float l;
float f;
boolean moveboolean = true;
boolean moveboolean1 = true;
boolean moveboolean2 = true;
boolean moveboolean3 = true;
int moveRate = 10;
float speed;
float speed1;
float speed2;
float speed3;

void setup(){
  
  size(800, 800);
  t = 1000; //red
  o = 1100; //green 
  p = -900; //white 
  h = -600;//dark blue 
  speed = 5;
  speed1 = 5;
  speed2 = 6;
  speed3 = 6;
  


}

void draw(){
  
  background (90, 126, 156);
  
  
 // ////clouds//////////////////////////////////////////////
 // fill(255, 255, 255);
 // noStroke();
 // ellipse(120, 45, 160, 90);
 // ellipse(70, 55, 120, 70);
 // ellipse(140, 55, 165, 70);
  
 //// ellipse(400, 45, 440, 90);
 //// ellipse(350, 55, 400, 70);
 // ellipse(400, 55, 400, 55);
  
  
  
  
  ////////////////////////////////////////////////////////////
  
////////grass////////////////////////////////////////////////
  fill(83, 200, 101);
  noStroke();
  square(00, 150, 5000);
 /////////////////////////////////////////////////////////////
 
 ///////road/////////////////////////////////////////////////
 strokeWeight(5);
 fill (119, 119, 119);
 square(00, 260, 5000);
 
 //////////////////////////////////////////////////////////////////
 
//////double yellow lines//////////////////////////////////////////
stroke(255, 235, 1);
strokeWeight(15);
line(0, 510, 1000, 510);
line(0, 530, 1000, 530);
////////////////////////////////////////////////////////////////////


 ////////checkered lines_ top half /////////////////////////////////
 // add 40 to each x-axis////////////////////////////////////
 
  strokeWeight (10);
  line(10, 395 , 25, 395);
  line(50, 395, 65, 395);
  line(90, 395, 105, 395);
  line(130, 395, 145, 395);
  line(170, 395, 185, 395);
  line(210, 395, 225, 395);
  line(250, 395, 265, 395);
  line(290, 395, 305, 395);
  line(330, 395, 345, 395);
  line(370, 395, 385, 395);
  line(410, 395, 425, 395);
  line(450, 395, 465, 395);
  line(490, 395, 505, 395);
  line(530, 395, 545, 395);
  line(570, 395, 585, 395);
  line(610, 395, 625, 395);
  line(650, 395, 665, 395);
  line(690, 395, 705, 395);
  line(730, 395, 745, 395);
  line(770, 395, 785, 395);
                                 
 /////////////////////////////////////////////////////////////////////
 
 ///////checkered lines_bottom half///////////////////////////////////
 ///////add 40 to each x -axis////////////////////////////////////////
 
 line(10, 655 , 25, 655);
 line(50, 655 , 65, 655);
 line(90, 655 , 105, 655);
 line(130, 655 , 145, 655);
 line(170, 655 , 185, 655);
 line(210, 655 , 225, 655);
 line(250, 655 , 265, 655);
 line(290, 655 , 305, 655);
 line(330, 655 , 345, 655);
 line(370, 655 , 385, 655);
 line(410, 655 , 425, 655);
 line(450, 655 , 465, 655);
 line(490, 655 , 505, 655);
 line(530, 655 , 545, 655);
 line(570, 655 , 585, 655);
 line(610, 655 , 625, 655);
 line(650, 655 , 665, 655);
 line(690, 655 , 705, 655);
 line(730, 655 , 745, 655);
 line(770, 655 , 785, 655);
 
 ///////////////////////////////////////////////////////////////
 
 //////////////////cars///////////////
 noStroke();
 stroke(0, 0, 0);
 strokeWeight(8);
 //////red car////////////////////////////////
 fill(255, 0, 0);          
 square(t, 420, 50);
 //t = t + speed;
 
  if(t>900) {
 moveboolean = false;
  }
 
 //if (t>0){
 //  moveboolean = true;
 
 //}
 if (moveboolean == false) {
   speed = -5;
 }
 
 
 if (moveboolean == true) {
speed = 5;
 
 }
 
 
 {
 t = t + speed;
 }
 
 ///////////////////////////////////////////////////
 
 ///////green car/////////////////////////////////////
 fill (0 , 255, 0);         
 square(o, 300, 50);
 
 // if(o>1000) {
 //moveboolean = false;
 // }
 
 if (o>900){
   moveboolean1 = false;
 
 }
 if (moveboolean1 == false) {
   speed2 = -4;
 }
 
 
 if (moveboolean1 == true) {
speed2 = 4;
 
 }
 
 
 {
 o = o + speed2;
 }
// ///////////////////////////////////////////////

////////////////// white car //////////////
fill( 255, 255, 255);
  square (p, 590, 50);
  
    if(p>1000) {
 moveboolean = true;
  }
 
 //if (h>900){
 //  moveboolean1 = false;
 
 
 if (moveboolean3 == false) {
   speed2 = -5;
 }
 
 
 if (moveboolean3 == true) {
speed2 = 5;
 
 }
 
 
 {
 p = p + speed2;
 }
 
 
/////////////////////////////////////////
  fill (25,80,100);  ///dark blue//////
{ 
 
  square (h, 590, 50);
  
    if(h>1000) {
 moveboolean = true;
  }
 
 //if (h>900){
 //  moveboolean1 = false;
 
 }
 if (moveboolean2 == false) {
   speed2 = -5;
 }
 
 
 if (moveboolean2 == true) {
speed2 = 5;
 
 }
 
 
 {
 h = h + speed2;
 }

////////////////////////////////////////////////////

 /////////////////////fourth car////////////////////////////

 /////////////////////////////////////////////////////////
 



}
