#include  <LiquidCrystal.h>
#include <TimerOne.h>
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
int bandera=0;
int s=0, m=0;
void unsegundo(){
  bandera=1;
  s++;
  
  }


void setup() {
  lcd.begin(20, 4);
  Timer1.initialize(1000000);
  Timer1.attachInterrupt(unsegundo);
  lcd.setCursor(0,0);
  lcd.print("Tiempo");
  lcd.setCursor(11,1);
  lcd.print(":");
   
}

void loop() {
   if(bandera==1){
    if(m>=10){
      lcd.setCursor(9,1);
      lcd.print(m);
      }
     else{
        lcd.setCursor(9,1);
        lcd.print("0");
        lcd.setCursor(10,1);
        lcd.print(m);
      }
    if(s>=10){
      lcd.setCursor(12,1);
      lcd.print(s);
      }
    else{
        lcd.setCursor(12,1);
        lcd.print("0");
        lcd.setCursor(13,1);
        lcd.print(s);
      }
      
      
    if(s>=60){
      m++;
      s=0;
      }
    bandera=0;
    }
   
}
