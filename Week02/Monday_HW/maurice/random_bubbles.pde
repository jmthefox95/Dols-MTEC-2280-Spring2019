boolean moveboolean = true;
boolean moveboolean1 = true;
boolean moveboolean2 = true;
boolean moveboolean3 = true;
boolean moveboolean4 = true;
boolean moveboolean5 = true;
boolean moveboolean6 = true;
boolean moveboolean7 = true;
boolean moveboolean8 = true;
boolean moveboolean9 = true;
float moveRate = 10;
float locationY = 800;
float locationY1 = 600;
float locationY2 = 700;
float locationY3 = 600;
float locationY4 = -30;
float locationY5 = 800;
float locationY6 = -500;
float locationY7 = 800;
float locationY8 = 800;
float locationY9 = -40;

void setup() {
  size(600, 600);
}

void draw() {
  background(255, 255, 255);
  
  ///////////////////////// 1 bubble///////////////////////////
fill (255, 0, 255); //pink/// 
  ellipse(300, locationY, 100, 100);
  
 if (locationY > 600){  //Does the ball exceed hit the right wall?
   moveboolean = false;
 }
 
 //if (locationY < 0){  //Does the ball thie the left wall?
 //   moveboolean = true;
 //}
 
  if (moveboolean == false){  // if the ball hits the right wall move the opposite direction...left
   moveRate = -1.2;
 }
 
  if (moveboolean == true){  // if the ball hits the left wall move the opposite direction... right
   moveRate = 1.2;
 }
 
  locationY = locationY+moveRate;

////////////////////////////////////////////////////////////////

/////////// 2 bubbles/////////////////////////
fill (0, 0, 0);  /// black/////
  ellipse (300, locationY1, 1000, 1000);
fill (255, 0, 0);  ///red//////
  ellipse (400, locationY2, 75, 75);

   if (locationY1 > 600){  //Does the ball exceed hit the right wall?
   moveboolean1 = false;
 }
   if (locationY2 > 600) {
     moveboolean2 = false;
   }
 
 //if (locationY2 < -20){  //Does the ball thie the left wall?
 //   moveboolean = true;
 //}
 
  if (moveboolean1 == false){  // if the ball hits the right wall move the opposite direction...left
   moveRate = -1;
 }
 if (moveboolean2 == false) {
   moveRate = -3;
 }
 
  if (moveboolean1 == true){  // if the ball hits the left wall move the opposite direction... right
   moveRate = 1;
 }
 if (moveboolean2 == true){
   moveRate = 3;
 }
 
  locationY1 = locationY1 + moveRate;
  locationY2 = locationY2 + moveRate;
///////////////////////////////////////////////////////////////////////////////

//////////////3 ballons /////////////////////////////
 fill (255, 255, 0);  ///yellow////
  ellipse(200, locationY3, 150, 150);
  
 if (locationY3 > 600){  //Does the ball exceed hit the right wall?
   moveboolean3 = false;
 }
 
 //if (locationY < 0){  //Does the ball thie the left wall?
 //   moveboolean = true;
 //}
 
  if (moveboolean3 == false){  // if the ball hits the right wall move the opposite direction...left
   moveRate = -1.2;
 }
 
  if (moveboolean3 == true){  // if the ball hits the left wall move the opposite direction... right
   moveRate = 1.2;
 }
 
  locationY3 = locationY3 + moveRate;
  
  ///////////////////////////////////////////////////////////
  
  fill (2, 255, 0);    ////green////
  ellipse(100, locationY4, 300, 300);
  
 if (locationY4 > 600){  //Does the ball exceed hit the right wall?
   moveboolean4 = false;
 }
 
 //if (locationY < 0){  //Does the ball thie the left wall?
 //   moveboolean = true;
 //}
 
  if (moveboolean4 == false){  // if the ball hits the right wall move the opposite direction...left
   moveRate = -1.2;
 }
 
  if (moveboolean4 == true){  // if the ball hits the left wall move the opposite direction... right
   moveRate = 1.2;
 }
 
  locationY4 = locationY4 + moveRate;
  //////////////////////////////////////////////////
   fill (55, 25, 100);  /// purple///////
  ellipse(200, locationY5, 150, 150);
  
 if (locationY5 > 600){  //Does the ball exceed hit the right wall?
   moveboolean5 = false;
 }
 
 //if (locationY < 0){  //Does the ball thie the left wall?
 //   moveboolean = true;
 //}
 
  if (moveboolean5 == false){  // if the ball hits the right wall move the opposite direction...left
   moveRate = -3;
 }
 
  if (moveboolean5 == true){  // if the ball hits the left wall move the opposite direction... right
   moveRate = 3;
 }
 
  locationY5 = locationY5 + moveRate;
  
  //////////////////////////////////////////////////
  
    fill (255, 255, 255);    ////white////
  ellipse(400, locationY6, 300, 300);
  
 if (locationY6 > 600){  //Does the ball exceed hit the right wall?
   moveboolean6 = false;
 }
 
 //if (locationY < 0){  //Does the ball thie the left wall?
 //   moveboolean = true;
 //}
 
  if (moveboolean6 == false){  // if the ball hits the right wall move the opposite direction...left
   moveRate = -4;
 }
 
  if (moveboolean6 == true){  // if the ball hits the left wall move the opposite direction... right
   moveRate = 4;
 }
 
  locationY6 = locationY6 + moveRate;
  
///////////////////////////////////////////////////////////////////


fill (255, 0, 0); ///red////
  ellipse(100, locationY, 200, 200);
  
 if (locationY7 > 600){  //Does the ball exceed hit the right wall?
   moveboolean7 = false;
 }
 
 //if (locationY < 0){  //Does the ball thie the left wall?
 //   moveboolean = true;
 //}
 
  if (moveboolean7 == false){  // if the ball hits the right wall move the opposite direction...left
   moveRate = -1.2;
 }
 
  if (moveboolean7 == true){  // if the ball hits the left wall move the opposite direction... right
   moveRate = 1.2;
 }
 
  locationY7 = locationY7 + moveRate;
  
//////////////////////////////////////////////////////////////////////////////


fill (255, 255, 255);  //white///
  ellipse(100, locationY8, 50, 50);
  
 if (locationY8 > 600){  //Does the ball exceed hit the right wall?
   moveboolean8 = false;
 }
 
 //if (locationY < 0){  //Does the ball thie the left wall?
 //   moveboolean = true;
 //}
 
  if (moveboolean8 == false){  // if the ball hits the right wall move the opposite direction...left
   moveRate = -1.4;
 }
 
  if (moveboolean8 == true){  // if the ball hits the left wall move the opposite direction... right
   moveRate = 1.4;
 }
 
  locationY8 = locationY8 + moveRate;
  
  //////////////////////////////////////////////////////////////////////
  
  fill (2, 25, 100);    ////darkblue////
  ellipse(300, locationY9, 300, 300);
  
 if (locationY9 > 600){  //Does the ball exceed hit the right wall?
   moveboolean9 = false;
 }
 
 //if (locationY < 0){  //Does the ball thie the left wall?
 //   moveboolean = true;
 //}
 
  if (moveboolean9 == false){  // if the ball hits the right wall move the opposite direction...left
   moveRate = -2;
 }
 
  if (moveboolean9 == true){  // if the ball hits the left wall move the opposite direction... right
   moveRate = 2;
 }
 
  locationY9 = locationY9 + moveRate;
}
