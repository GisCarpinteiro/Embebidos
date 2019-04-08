#include<Keypad.h>
#include  <LiquidCrystal.h>
const byte filas = 4;
const byte columnas = 4;
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
byte pinesF[filas] = {53,51,49,47};
byte pinesC[columnas] = {45,43,41,39};
char tecla;
 int uno=0, dos=0;
char teclas[filas][columnas] = {
 
 {'1','2','3','A'},
 {'4','5','6','B'},
 {'7','8','9','C'},
 {'*','0','#','D'}
};
 int fila=0, columna=0;
Keypad teclado = Keypad(makeKeymap(teclas), pinesF, pinesC, filas, columnas);
 
void setup() {
 Serial.begin(9600);
}
void loop() {
 tecla = teclado.getKey();
 if (tecla != 0){
     switch(tecla){
      case 49:
          uno++;
          if(uno==1){
            lcd.setCursor( columna, fila);
          lcd.print(tecla);
          }
          if(uno==2){
            lcd.setCursor( columna, fila);
            lcd.print("E");
            }
          break;
         case 50:
          columna++;
           dos++;
          if(dos==1){
            lcd.setCursor( columna, fila);
          lcd.print(tecla);
          }
          if(dos==2){
            lcd.setCursor( columna, fila);
            lcd.print("F");
            }
          break;
      
      
      }
    
     
 }

}
