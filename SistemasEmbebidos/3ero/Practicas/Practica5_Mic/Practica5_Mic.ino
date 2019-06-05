#include <LiquidCrystal.h>

const int rs = 7, en = 6, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

int rele = 13 ; 
int calib = A15 ;
int mic_digital = 8;
bool estado = false ;

void setup()
{
  lcd.begin(20,4);
  pinMode( rele, OUTPUT) ;
  pinMode( calib , INPUT_PULLUP) ;
  pinMode(mic_digital, INPUT);
  
  digitalWrite(rele , LOW) ; // Apagamos el LED al empezar
}

void loop()
{
  bool  valor =  digitalRead(mic_digital) ; //leemos el estado del sensor
  if ( valor == true ) //Si está activada la salida D0
  {
    estado = ! estado ;                       // cambiamos el estado del LED
    digitalWrite(rele, estado) ;            // escribimos el nuevo valor
    delay (600);       
    
  }

  /*lcd.clear();  
  int valorAnalogico = analogRead(calib);
  lcd.print(String(valorAnalogico));*/
}
