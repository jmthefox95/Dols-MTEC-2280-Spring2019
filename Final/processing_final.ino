int ledPin1 = 13;
int ledPin2 = 12;
int ledPin3 = 11;
int ledPin4 = 10;
int ledPin5 = 9;

int pirPin1 = 2; //input
int pirState1 = LOW;

int pirPin2 = 3;
int pirState2 = LOW;

int pirPin3 = 4;
int pirState3 = LOW;

int pirPin4 = 6;
int pirState4 = LOW;

int pirPin5 = 8;
int pirState5 = LOW;

int val1 = 0;
int val2 = 0;
int val3 = 0;
int val4 = 0;
int val5 = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

  
  pinMode(pirPin1, INPUT);//SENSOR 1
  pinMode(pirPin2,INPUT);// SENSOR 2 
  pinMode(pirPin3, INPUT);// SENSOR 3
  pinMode(pirPin4, INPUT); //SENSOR 4 
  pinMode(pirPin5, INPUT);// SENSOR 5
  
  //leds
  pinMode(ledPin1, OUTPUT);
  pinMode(ledPin2, OUTPUT);
  pinMode(ledPin3, OUTPUT);
  pinMode(ledPin4, OUTPUT);
  pinMode(ledPin5, OUTPUT);
  
  

  
  
}

void loop() {
  // put your main code here, to run repeatedly:
 val1 = digitalRead(pirPin1);  // read input value
  if (val1 == HIGH) {            // check if the input is HIGH
    digitalWrite(ledPin1, HIGH);  // turn LED ON
    if (pirState1 == LOW) {
      // we have just turned on
      Serial.println("Motion detected 1");
      // We only want to print on the output change, not state
      pirState1 = HIGH;
    }
  } else {
    digitalWrite(ledPin1, LOW); // turn LED OFF
    if (pirState1 == HIGH) {
      // we have just turned of
      Serial.println("Motion ended 1");
      // We only want to print on the output change, not state
      pirState1 = LOW;
    }
  }
//
//   val2 = digitalRead(pirPin2);  // read input value
//  if (val2 == HIGH) {            // check if the input is HIGH
//    digitalWrite(ledPin2, HIGH);  // turn LED ON
//    if (pirState2 == LOW) {
//      // we have just turned on
//      Serial.println("Motion detected 2");
//      // We only want to print on the output change, not state
//      pirState2 = HIGH;
//    }
//  } else {
//    digitalWrite(ledPin2, LOW); // turn LED OFF
//    if (pirState2 == HIGH) {
//      // we have just turned of
//      Serial.println("Motion ended 2");
//      // We only want to print on the output change, not state
//      pirState2 = LOW;
//    }
//  }
//
//   val3 = digitalRead(pirPin3);  // read input value
//  if (val3 == HIGH) {            // check if the input is HIGH
//    digitalWrite(ledPin3, HIGH);  // turn LED ON
//    if (pirState3 == LOW) {
//      // we have just turned on
//      Serial.println("Motion detected 3");
//      // We only want to print on the output change, not state
//      pirState3 = HIGH;
//    }
//  } else {
//    digitalWrite(ledPin3, LOW); // turn LED OFF
//    if (pirState3 == HIGH) {
//      // we have just turned of
//      Serial.println("Motion ended 3");
//      // We only want to print on the output change, not state
//      pirState3 = LOW;
//    }
//  }
//
//   val4 = digitalRead(pirPin4);  // read input value
//  if (val4 == HIGH) {            // check if the input is HIGH
//    digitalWrite(ledPin4, HIGH);  // turn LED ON
//    if (pirState4 == LOW) {
//      // we have just turned on
//      Serial.println("Motion detected 4");
//      // We only want to print on the output change, not state
//      pirState4 = HIGH;
//    }
//  } else {
//    digitalWrite(ledPin4, LOW); // turn LED OFF
//    if (pirState4 == HIGH) {
//      // we have just turned of
//      Serial.println("Motion ended 4");
//      // We only want to print on the output change, not state
//      pirState4 = LOW;
//    }
//  }
//
//   val5 = digitalRead(pirPin5);  // read input value
//  if (val5 == HIGH) {            // check if the input is HIGH
//    digitalWrite(ledPin5, HIGH);  // turn LED ON
//    if (pirState5 == LOW) {
//      // we have just turned on
//      Serial.println("Motion detected 5");
//      // We only want to print on the output change, not state
//      pirState5 = HIGH;
//    }
//  } else {
//    digitalWrite(ledPin5, LOW); // turn LED OFF
//    if (pirState5 == HIGH) {
//      // we have just turned of
//      Serial.println("Motion ended 5");
//      // We only want to print on the output change, not state
//      pirState5 = LOW;
//    }
//  }
}
