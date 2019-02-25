void setup() {
  background(255);
}

void draw() {
  AnyName(20, 40);  // call on function in your draw loop
}

void AnyName(int a ,int b) {  //make function outside of your draw loop
  noFill();
  ellipse(a,b,20,20);
  
}
