//Naomi Marshall
//I wanted to make it look like blocks moving in and out
//It looks a bit off but it's alright



void setup() {
  size(500, 500);
  background(255);
}

void draw(){
for (int x = 0; x <= 500; x += 25) { 
    for (int y = 0; y<=500; y += 25) {



int len = 25;     // Keeps weird cross from forming

{ 
  //fill(mouseY, mouseX, random(255));
  if (mousePressed){
    fill(random(150,200),mouseX,mouseY,120);
  }else{             
    fill(random(200,250),mouseX,mouseY,random(100,150));
  } 
  
  strokeWeight(random(1,5));
  rect(x, y, x + len, y + len);
  
   } 
}
}
}
