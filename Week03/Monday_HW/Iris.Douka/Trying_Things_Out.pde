int val = millis();
int t = container(val/2); // integer



int container(int val) {
  return val;
}

void draw() {
  for (int i=0; i<=1; i++) {
    println("i",i , "." ,"t", t, ".", "m",val);
  }
}
