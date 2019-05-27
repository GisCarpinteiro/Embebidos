#include<Keypad.h>
#include  <LiquidCrystal.h>
const byte filas = 4;
const byte columnas = 4;
char tecla;
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
byte pinesF[filas] = {53,51,49,47};
byte pinesC[columnas] = {45,43,41,39};
char teclas[filas][columnas] = {
 
 {'1','2','3','A'},
 {'4','5','6','B'},
 {'7','8','9','C'},
 {'*','0','#','D'}
};
 
Keypad teclado = Keypad(makeKeymap(teclas), pinesF, pinesC, filas, columnas);
int altavoz = 9;
void setup() {
 
  lcd.begin(20, 4); 
  Serial.begin(9600);
}

void loop() {
  tecla = teclado.getKey();
  if(tecla=='1'){
    lcd.setCursor(0,0);
    lcd.print("DO");
    tone (altavoz, 262, 1000);
    }
  if(tecla=='2'){
    lcd.setCursor(0,0);
    lcd.print("RE");
    tone (altavoz, 294, 1000);
    }
   if(tecla=='3'){
    lcd.setCursor(0,0);
    lcd.print("MI");
    tone (altavoz, 330, 1000);
    }
    if(tecla=='4'){
    lcd.setCursor(0,0);
    lcd.print("FA");
    tone (altavoz, 349, 1000);
    }
    if(tecla=='5'){
    lcd.setCursor(0,0);
    lcd.print("SOL");
    tone (altavoz, 392, 1000);
    }
    if(tecla=='6'){
    lcd.setCursor(0,0);
    lcd.print("lA");
    tone (altavoz, 440, 1000);
    }
    if(tecla=='7'){
    lcd.setCursor(0,0); 
    lcd.print("SI");
    tone (altavoz, 493, 1000);
    }
    if(tecla=='8'){
    lcd.setCursor(0,0); 
    lcd.print("DO");
    tone (altavoz, 523, 1000);
    }
}
