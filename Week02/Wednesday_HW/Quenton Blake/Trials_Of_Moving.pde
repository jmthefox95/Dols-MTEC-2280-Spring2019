float i;
float y;
float x;
boolean OnOff = true;
float growth = 0.2;
float RecColor= 255;
float RecColor2= 255;
float q = random(80);
float rate = 1;

void setup() {
 size(800,800);
  strokeWeight(2);
  i=20;
  y=0;
  x=0;
}

void draw() {
 background(204);
 for (i = 20; i < 400; i += 20) { //i+=8
 //line(i, 40, i + 60, 80); or line(i, 0,  i + i/2, 80
   line(i,  growth, i + i/2, 80);
   line(i + i/growth,  growth, i*1.2, 120);
 }
   for (y = 0; y <= height; y += 40) {
 for (x = 0; x <= width; x += 40) {
 fill(255, 140);
 ellipse(x, y, growth, 40);
 }
   }
 RecColor = map(mouseX, 0, width, 0, q);
  RecColor2 = map(mouseY, 0, height, 0, q);
  strokeWeight(4);
  fill(0, RecColor2, RecColor,200);
  rect(0,0,1000, growth);
  fill(0,RecColor,RecColor2, 200);
  quad (200, 200, 400, 200, 600, 600, 200,  growth);
  fill (RecColor,RecColor, RecColor2,200);  //sets fill color to yellow-green
  strokeWeight(4);
  fill (RecColor,RecColor, RecColor2,200);
  line (200,200, growth,600);
  fill (RecColor,RecColor, RecColor2,200);
  line(400, growth,growth,300);
  
  if (mousePressed == true){
    OnOff = false;
    rate = 1;
  }

  if (keyPressed == true){
    OnOff = true;
    rate = -2;
    x= random(150); random(200); random(0);
  }
  growth = growth + rate;
}
