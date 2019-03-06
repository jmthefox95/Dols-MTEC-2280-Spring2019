Ball Ball1; // Declare car object as a globle variable.
//Ball Ball2;
int space=16;

int w;

float angle=0.0;
  float amp=75;
  float period =500;
  float in; //increment
float [] y;



void setup() {
  size(640, 360);
  w=width+16;
  in=((PI*2)/(period))*space;
  //print(in);
  y=new float[w/space];
  // Initialize Objects
  Ball1 = new Ball(155,10);
  //Ball2 = new Ball(0, 0, 25, 3);
}

void draw() {
  background(0);
  Ball1.move(); 
  Ball1.display();
  //Ball2.move(); 
  //Ball2.display();
}

// Define a class outside of setup and draw.
class Ball { 
  // Variables.
  color c; 
  //float xpos;
  //float ypos;
  float speed;
  
  
  
  // Constructor.
  Ball(int IndyColor,float IndySpeed) { 
    c = IndyColor;
    //xpos = IndyXpos;
    //ypos = IndyYpos;
    speed = IndySpeed;
  }

  // Function
  void display() { 
    stroke(0);
    fill(255);
    for (int x = 0; x < y.length; x++) {
    ellipse(x*space, height/2+y[x], 50, 50);
    
  }
  }

  // Function (Update)
  void move() { 
    angle+=0.2;
    float x=angle;
    for(int i=0; i<y.length; i++)
    {
      y[i]=sin(x)*amp; 
      x+=in;
    }
    //print(x);
    
    
    //xpos = (PI*2)/ (xpos + speed);
    //if (xpos > width) {
      //xpos = 0;
    //}
  }
}



///https://processing.org/examples/sinewave.html
