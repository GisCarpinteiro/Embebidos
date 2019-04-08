#include<Keypad.h>
#include  <LiquidCrystal.h>
const byte filas = 4;
const byte columnas = 4;
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
byte pinesF[filas] = {53,51,49,47};
byte pinesC[columnas] = {45,43,41,39};
char tecla;
 
char teclas[filas][columnas] = {
 
 {'1','2','3','A'},
 {'4','5','6','B'},
 {'7','8','9','C'},
 {'*','0','#','D'}
};
 
Keypad teclado = Keypad(makeKeymap(teclas), pinesF, pinesC, filas, columnas);
 
void setup() {
 Serial.begin(9600);
}
void loop() {
 tecla = teclado.getKey();
 if (tecla != 0){
  if(tecla==54){
    lcd.setCursor(0, 0);
    lcd.print(tecla);
    
    }
    
  
 }


}
