#include "RTClib.h"
#include <Wire.h>
#include  <LiquidCrystal.h>
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
RTC_DS1307 rtc;
void setup() {
  Wire.begin();
  lcd.begin(20, 4); 
  Serial.begin(9600);
  //rtc.adjust(DateTime(2019, 5, 28, 9, 0, 0));
   if (!rtc.isrunning()) {
      // Fijar a fecha y hora de compilacion
      rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
      
      
   }
}

void loop() {
  DateTime now = rtc.now();
 
  if(now.second()<11){
    lcd.setCursor(12, 0);
    lcd.print(" ");
    }
  lcd.setCursor(0, 0);
  //printDate(now);
  //delay(3000);
  lcd.print("Hora: ");
   lcd.print(now.hour());
   lcd.print(':');
   lcd.print(now.minute());
   lcd.print(':');
   lcd.print(now.second());
   lcd.setCursor(0, 1);
   lcd.print("Fecha: ");
   lcd.print(now.year());
   lcd.print('/');
   lcd.print(now.month());
   lcd.print('/');
   lcd.print(now.day());
   
   
}


/*void printDate(DateTime date)
{
   lcd.setCursor(0, 1);
   lcd.print(date.year(), DEC);
   lcd.print('/');
   lcd.print(date.month(), DEC);
   lcd.print('/');
   lcd.print(date.day(), DEC);
   lcd.print(" (");
//   lcd.print(daysOfTheWeek[date.dayOfTheWeek()]);
   lcd.print(") ");
   lcd.print(date.hour(), DEC);
   lcd.print(':');
   lcd.print(date.minute(), DEC);
   lcd.print(':');
   lcd.print(date.second(), DEC);
   //lcd.println();
}*/
