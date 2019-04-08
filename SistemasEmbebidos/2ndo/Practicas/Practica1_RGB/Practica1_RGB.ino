int Rojo = 2;
int Verde = 3;
int Azul = 4;

void setup() {

 
  pinMode(Rojo, OUTPUT);
  pinMode(Verde, OUTPUT);
  pinMode(Azul, OUTPUT);

}

void convertir(int r,int v, int a){
r= 255-r;
v= 255-v;
a= 255-a;
  analogWrite(Rojo, r );
  analogWrite(Verde, v);
  analogWrite(Azul, a);
  delay(1000);
  
}


void loop() {
convertir(0, 255, 255);
convertir(0, 0, 0);
convertir(255, 0, 255);
convertir(0, 0, 0);
convertir(255, 255, 0);
convertir(0, 0, 0);
convertir(66, 69, 244);
convertir(0, 0, 0);
convertir(90, 20, 100);
convertir(0, 0, 0);
convertir(244, 232, 66);
convertir(0, 0, 0);

}
