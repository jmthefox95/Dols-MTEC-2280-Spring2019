//keon depradine
float r = 0;
float g = 0;
float b = 0;
float r2 = 0;
float g2 = 0;
float b2 = 0;
float size = 400;
float size2 = 400;
float size3 =200;
void setup() {
 size(500, 500);
}

void draw() {

 background(0);
fill(r2,g2,g2);
ellipse(250, 250, size,size2);
 fill(r, g, b);
ellipse(250, 250, 200, size3 );

 noStroke();

 float d =  dist(250, 250, mouseX, mouseY);
println(d);


if (d > 100 && d < 200) {
 r2=random(255);
 g2=random(255);
b2=random(255);
size = random(400);
size2 = random(400);
}else {
 r2=255;
  g2=255;
b2=255;
size = 400;
size2 = 400;
}


if (d < 100 || mousePressed ) {
r=0;
g=0;
 b=random(255);
size3 = random(400);
} else {
r=0;
g=0;
b=0;
size3 = 200;
}

 }
