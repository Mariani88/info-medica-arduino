int pinPot = A0;
int valor = 0;

void setup() {
  Serial.flush();
  Serial.begin(115200);
}

void loop() {

  if(Serial.available()){
    char c = Serial.read();
    if(c == '0'){
      enviarLectura();
    }
  }
}

void enviarLectura(){
  
  int n = 0;

    while(n < 10){
      valor = analogRead(pinPot);
      Serial.println(valor);
      delay(50);
      n++;
    }
}

