#include  <LiquidCrystal.h>
LiquidCrystal lcd(7, 6, 5, 4, 3, 2);
void setup() {
  // put your setup code here, to run once:
lcd.begin(20, 4); //16x2
//lcd.clear(); //(0, 0)
}

void loop() {
  // put your main code here, to run repeatedly:
   lcd.setCursor(0, 0);
   lcd.print("Gisel");
    delay(1000);
   lcd.setCursor(0, 1); //Segunda linea
   lcd.print("Carpinteiro");
   delay(1000);
   //lcd.clear();
}
