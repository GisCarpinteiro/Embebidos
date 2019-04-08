#include<Keypad.h>
#include <LiquidCrystal.h>
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);

const byte filas = 4;
const byte columnas = 4;
int real=0;
int lados=0;
byte pinesF[filas] = {53,51,49,47};
byte pinesC[columnas] = {45,43,41,39};
char tecla;
int linea=0, detener=0;
 
char teclas[filas][columnas] = {
 
 {'1','2','3','A'},
 {'4','5','6','B'},
 {'7','8','9','C'},
 {'*','0','#','D'}
};



 
Keypad teclado = Keypad(makeKeymap(teclas), pinesF, pinesC, filas, columnas);

byte b1[] = {
  B01101,
  B01111,
  B11000,
  B10101,
  B10010,
  B01000,
  B10010,
  B11101
};

byte b2[] = {
  B10000,
  B10000,
  B01000,
  B01000,
  B01000,
  B10000,
  B01000,
  B11000
};

byte kk[] = {
  B00010,
  B01001,
  B10001,
  B10010,
  B01000,
  B00000,
  B00100,
  B01110
};
byte dormir[] = {
  B00000,
  B01110,
  B00010,
  B00100,
  B01000,
  B01110,
  B00000,
  B00000
};
byte corazon[] = {
  B00000,
  B00000,
  B11011,
  B11111,
  B01110,
  B00100,
  B00000,
  B00000
};
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  lcd.begin(20, 4);
  lcd.createChar(0, b1);
  lcd.createChar(1, b2);
  lcd.createChar(2, kk);
  lcd.createChar(3, dormir);
  lcd.createChar(4, corazon);
  lcd.setCursor(linea+2, 3);
  lcd.write((byte) 4);
}


void mover(int i){

    if(i>=6 && i<=9){
        lcd.setCursor(i, 1); //columna, filaa
        lcd.write((byte) 0);
        lcd.setCursor(i+1, 1); //columna, filaa
        lcd.write((byte) 1);
        delay(1000);
        lcd.setCursor(i, 1); //columna, filaa
        lcd.print(" ");
        lcd.setCursor(i+1, 1); //columna, filaa
        lcd.print(" ");
      
    }
  
  }

void dormirse(){
        
        lcd.setCursor(6, 1); //columna, filaa
        lcd.write((byte) 0);
        lcd.setCursor(7, 1); //columna, filaa
        lcd.write((byte) 1);
        lcd.setCursor(7, 0); //Esto es cuando duerma
        lcd.write((byte) 3);
        
  }

void despertarse(){
        detener=0;
        lcd.setCursor(6, 1); //columna, filaa
        lcd.print(" ");
        lcd.setCursor(7, 1); //columna, filaa
        lcd.print(" ");
        lcd.setCursor(7, 0); //columna, filaa
        lcd.print(" ");
  
  }

int m=6, actual=10000;

unsigned long timeA=0, timeB=60000;
int ciclo=1000, ciclo1=120000;


void loop() {
  tecla = teclado.getKey();
   lcd.setCursor(0,0);
   lcd.print(millis());
   
  if(millis() > timeA + ciclo){
        timeA = millis();
      if(detener==0){
        mover(m);
        m=m+2;
        if(m>=9)
           m=6;
        }
    }
    
  if(millis() > timeB + ciclo1){
        timeA = millis();
        dormirse();
    }
  
  
 
    
  

  

  
}
