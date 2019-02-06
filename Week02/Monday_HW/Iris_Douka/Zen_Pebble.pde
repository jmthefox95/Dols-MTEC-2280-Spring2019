int a=300;
int b=300;

int s=80;
boolean bigger=true;

//float r= random(1-100);

void setup() {
  size (800, 800);
  background(255);
}

void draw() {
  stroke(0);
  strokeWeight(10);

  //point(30, 20);
  //point(85, 20);
  //point(85, 75);
  //point(30, 75);


  //fill (200, 20, 120, 5);
  //rect(width/6, height/6, s, s );

  fill(150, 80, 50, 1);

  ellipse(a, b, s, s);



  if (mouseX<a+s && mouseX>a && mouseY<b+s && mouseY >b){
  
    bigger=true; 
  } else {

    bigger =false;
  }

  if (bigger) {

    s=s+100;
  } else {
    s=80;
  }
}
