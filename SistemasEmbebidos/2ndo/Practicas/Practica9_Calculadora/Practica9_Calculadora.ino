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
int  signo;
String lol;
char tecla1;
String real;
String valor[5], valor1[5]; 
String hola[5];
double resultado=0;

String convertir(char letra){
    switch(letra){
        case '1':
        real="1";
        //real=String(tecla).toInt();
       
        break;
      case '2':
        real = "2";
       // real=String(tecla).toInt();
        break;
        case '3':
        real='3';
       // real=String(tecla).toInt();
        break;
      }

     return real;
  }

void sign(char t){
  lcd.print(t);
   lcd.clear();
  }

void setup() {
  lcd.begin(20, 4);
  //Serial.begin(9600);
  lcd.setCursor(0, 0);
  lcd.print("(A) Suma");
  lcd.setCursor(0, 1);
  lcd.print("(B) Resta");
  lcd.setCursor(0, 2);
  lcd.print("(*) Multiplicacion");
  lcd.setCursor(0, 3);
  lcd.print("(C) Division");
  delay(4000);
  lcd.clear();
  Serial.begin(9600);
  //tecla1 = teclado.getKey();
 // if(tecla1!=0){
   // sign(tecla1);
//  }
  
}
int i=0, cnt=0, j=0;
String total, total1;
int bandera=0;
double res, res1;
void loop() {
   //lcd.setCursor(10, 3);
   //lcd.print(bandera);
   lcd.setCursor(0, 2);
   lcd.print("----------------");
  tecla = teclado.getKey();
  if(tecla!=0 && i<5 && tecla!='#'){
      if(bandera==0){
     //convertir(tecla);
        valor[i]=tecla;
        i++;
        lcd.setCursor(0,0);
        total=valor[0]+valor[1]+valor[2]+valor[3]+valor[4];
         res=total.toDouble();
        lcd.print(res);
        }
     }
//////////////////////////////////
       if(tecla!=0 && j<5 && tecla!='#'){
           if(bandera==1){
            //lcd.setCursor(3,3);
           // lcd.print("Hola");
            valor1[j]=tecla;
            j++;
            total1=valor1[0]+valor1[1]+valor1[2]+valor1[3]+valor1[4];
            lcd.setCursor(0,1);
            res1=total1.toDouble();
            lcd.print(res1);
              }
             }
      
   if(tecla=='#'){
    // lcd.setCursor(0, 3);
    //lcd.clear();
    // lcd.print("Ok!");
     // delay(1000);
    bandera=1;
        //lcd.setCursor(0, 1);
       // lcd.setCursor(10, 3);
       // lcd.print(bandera);
    }


    if(tecla=='*'){
      lcd.setCursor(10, 1);
      lcd.print("*");
      lcd.setCursor(0, 3);
      resultado=res*res1;
      lcd.print(resultado);
      }
      
     if(tecla=='A'){
       lcd.setCursor(10, 1);
      lcd.print("+");
      lcd.setCursor(0, 3);
      resultado=res+res1;
      lcd.print(resultado);
      }
     if(tecla=='B'){
        lcd.setCursor(10, 1);
        lcd.print("-");
        lcd.setCursor(0, 3);
        resultado=res-res1;
        lcd.print(resultado);
      }
       if(tecla=='C'){
        lcd.setCursor(10, 1);
        lcd.print("/");
        lcd.setCursor(0, 3);
        resultado=res/res1;
        lcd.print(resultado);
      }
     
    }
