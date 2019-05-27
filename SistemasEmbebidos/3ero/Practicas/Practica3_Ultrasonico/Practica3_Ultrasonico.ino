#include  <LiquidCrystal.h>
#include  <NewPing.h>
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
#define TRIGGER_PIN  12
#define ECHO_PIN     11
#define MAX_DISTANCE 200
NewPing medir(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE);
void setup() {
  lcd.begin(20, 4); 
  Serial.begin(115200);
}
 int distancia;
void loop() {
   delay(200);
  distancia = medir.ping();
    if(medir.convert_cm(distancia)<10){
      lcd.setCursor(13, 0);
      lcd.print(" ");
      }
    if(medir.convert_cm(distancia)<100){
      lcd.setCursor(14, 0);
      lcd.print(" ");
      }
  
  lcd.setCursor(0, 0);
  lcd.print("Distancia = ");
  //lcd.print(distancia / US_ROUNDTRIP_CM);
  lcd.print(medir.convert_cm(distancia));
  lcd.setCursor(15, 0);
  lcd.print("cm");

}
