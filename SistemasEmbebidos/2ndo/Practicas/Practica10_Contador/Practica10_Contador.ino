#include  <LiquidCrystal.h>
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
int inter=2;
int bandera=0, botellas=0, cajas=0;

void setup() {
  lcd.begin(20, 4);
  pinMode(inter, INPUT);
   

}

void loop() {
    attachInterrupt(digitalPinToInterrupt(inter), contar, RISING);
    lcd.setCursor(0, 0);
    lcd.print("Botellas = ");
    lcd.setCursor(0, 1);
    lcd.print("Cajas = ");
    lcd.setCursor(12, 0);
    lcd.print(botellas);
    lcd.setCursor(12, 1);
    lcd.print(cajas);
   if(botellas==0){
         lcd.setCursor(13, 0);
         lcd.print(" ");
        }
    if(bandera==1){
 
       if(botellas>=12){
          botellas=0;
          cajas++;
          }
       bandera=0;
       }

      
}
void contar(){
  bandera=1;
  botellas=botellas+1;
 
  }
