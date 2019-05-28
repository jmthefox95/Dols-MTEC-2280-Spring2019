char val; // Data received from the serial port

void setup() {
  
  //LEDs
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);

  //Speaker
  pinMode(10, OUTPUT);

  Serial.begin(9600);
  establishContact();
  
}

void loop()
{
  if (Serial.available() > 0) { // If data is available to read,
    val = Serial.read(); // read it and store it in val

    if(val == 'C'){
      digitalWrite(2, HIGH); 
      delay(75);
      tone(10, 261, 150);
    } if(val == 'D'){
      digitalWrite(3, HIGH);
      delay(75);
      tone(10, 293, 150);
     }
    } if(val == 'E'){
      digitalWrite(4, HIGH);
      delay(75);
      tone(10, 329, 150);
     } if(val == 'F'){
      digitalWrite(5, HIGH);
      delay(75);
      tone(10, 349, 150);
     } if(val == 'G'){
      digitalWrite(6, HIGH);
      delay(75);
      tone(10, 391, 150);
     } if(val == 'a'){
      digitalWrite(7, HIGH);
      delay(75);
      tone(10, 440, 150);
     } if(val == 'B'){
      digitalWrite(8, HIGH);
      delay(75);
      tone(10, 493, 150);
     } if(val == 'H'){ //Second C
      digitalWrite(9, HIGH);
      delay(75);
      tone(10, 523, 150);
     }
     
    else{
    digitalWrite(2, LOW); 
    digitalWrite(3, LOW); 
    digitalWrite(4, LOW);
    digitalWrite(5, LOW);
    digitalWrite(6, LOW);
    digitalWrite(7, LOW);
    digitalWrite(8, LOW);
    digitalWrite(9, LOW);
    Serial.println("Play the piano!"); //send back a hello world
    delay(50);
    }
}

void establishContact() {
  while (Serial.available() <= 0) {
  Serial.println("A");   // send a capital A
  delay(100);
  }
}
