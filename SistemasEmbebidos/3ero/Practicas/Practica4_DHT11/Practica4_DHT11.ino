#include <DHT.h>
#include  <LiquidCrystal.h>
#define DHTPIN 22 //pin digital donde se conecta
#define DHTTYPE DHT11 //Tipo de sensor
DHT dht(DHTPIN, DHTTYPE); //Inicializar el sensor dht11
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
void setup() {
 lcd.begin(20,4);
 Serial.begin(9600);
 dht.begin();
}
float hum, tem; 
void loop() {
   hum = dht.readHumidity();
   tem = dht.readTemperature();
   lcd.setCursor(0, 0);
   lcd.print("Temperatura = ");
   lcd.print(tem);
   lcd.setCursor(0, 1);
   lcd.print("Humedad = ");
   lcd.print(hum);

}
