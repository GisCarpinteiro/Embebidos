#include <LiquidCrystal.h>

const int rs = 7, en = 6, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);


//Pines de salida de los sensores de herradura. 

int hEntrada = 18;
int hSalida = 19;

int rele = 8;
int contadorPersonas;
int tiempo;
bool valorEntrada, valorSalida;

void setup() {
  pinMode(rele, OUTPUT);
  lcd.begin(20,4);
  contadorPersonas = 0;
  lcd.setCursor(0,0);
  lcd.print("Personas");
  tiempo = 300;
}

void loop() {
  bool valorEntrada = digitalRead(hEntrada);
  if(valorEntrada){
    contar(22);
  }
  delay(tiempo);
  
  bool valorSalida = digitalRead(hSalida);
  if(valorSalida){
    contar(23);
  }

  
    
}

void contar(int herraduraAccionada){
  switch(herraduraAccionada){
    
    case 22:
    contadorPersonas++;
    break;

    case 23:
    if(contadorPersonas!=0)    contadorPersonas--;    
    break;    
  }

  for(int i=0; i<20; i++){
    lcd.setCursor(i,1);
    lcd.print(" ");
  }

  lcd.setCursor(10,1);
  lcd.print(String(contadorPersonas));

  if(contadorPersonas!=0) digitalWrite(rele,HIGH);
  else digitalWrite(rele,LOW);  
  
}
