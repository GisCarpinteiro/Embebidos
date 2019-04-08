#include <Arduino.h>
#line 1 "C:\\Users\\home\\Desktop\\Ceti\\Septimo\\SistemasEmbebidos\\2ndo\\Practicas\\Practica4_LCD\\Practica4_LCD.ino"
#line 1 "C:\\Users\\home\\Desktop\\Ceti\\Septimo\\SistemasEmbebidos\\2ndo\\Practicas\\Practica4_LCD\\Practica4_LCD.ino"
#include  <LiquidCrystal.h>
LiquidCrystal lcd(7, 6, 5, 4, 3, 2);
#line 3 "C:\\Users\\home\\Desktop\\Ceti\\Septimo\\SistemasEmbebidos\\2ndo\\Practicas\\Practica4_LCD\\Practica4_LCD.ino"
void setup();
#line 9 "C:\\Users\\home\\Desktop\\Ceti\\Septimo\\SistemasEmbebidos\\2ndo\\Practicas\\Practica4_LCD\\Practica4_LCD.ino"
void loop();
#line 3 "C:\\Users\\home\\Desktop\\Ceti\\Septimo\\SistemasEmbebidos\\2ndo\\Practicas\\Practica4_LCD\\Practica4_LCD.ino"
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

