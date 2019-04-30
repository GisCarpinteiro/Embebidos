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

Keypad teclado = Keypad(makeKeymap(teclas), pinesF, pinesC, filas, columnas);
 String oracion[40], letra;
 
 int i=0, n=0, tope=0, cambie=0;
 
void setup() {
  lcd.begin(20, 4);
 Serial.begin(9600);
}

void loop() {
  lcd.cursor();
 tecla = teclado.getKey();
 if (tecla != 0){
    switch(tecla){
       case '0':
          if(n==0){
          letra='0';
          tope=0;
          //cambie++;
          }
          
        if(n==2){
          letra=' ';
          tope=1;
          }
         checar(letra);
      break;
      case '1':
       
        if(n==0){
          letra='1';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='A';
            }
        if(n==2){
          letra='B';
          tope=1;
          }
         checar(letra);
      break;
     case '2':
        
        if(n==0){
          letra='2';
          tope=0;
          //cambie++;
          }
        if(n==1){
          letra='C';
          }
          
        if(n==2){
          letra='D';
          tope=1;
          }
         checar(letra);
        break;
      case '3':
      if(n==0){
          letra='3';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='E';
            }
        if(n==2){
          letra='F';
          tope=1;
          }
         checar(letra);
       break;

       case '4':
      if(n==0){
          letra='4';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='G';
            }
        if(n==2){
          letra='H';
          tope=1;
          }
         checar(letra);
       break;

       case '5':
      if(n==0){
          letra='5';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='I';
            }
        if(n==2){
          letra='J';
          tope=1;
          }
         checar(letra);
       break;

        case '6':
      if(n==0){
          letra='6';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='K';
            }
        if(n==2){
          letra='L';
          tope=1;
          }
         checar(letra);
       break;
       
       case '7':
        if(n==0){
          letra='7';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='M';
            }
        if(n==2){
          letra='N';
          tope=1;
          }
         checar(letra);
       break;

          case '8':
      if(n==0){
          letra='8';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='O';
            }
        if(n==2){
          letra='P';
          tope=1;
          }
         checar(letra);
       break;

      case '9':
      if(n==0){
          letra='9';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='Q';
            }
        if(n==2){
          letra='R';
          tope=1;
          }
         checar(letra);
       break;
       case '*':
        if(n==0){
          letra='*';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='S';
            }
        if(n==2){
          letra='T';
          tope=1;
          }
         checar(letra);
       break;

         case '#':
        if(n==0){
          letra='#';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='U';
            }
        if(n==2){
          letra='V';
          tope=1;
          }
         checar(letra);
       break;
       
       case 'A':
        if(n==0){
          letra='W';
          tope=0;
          //cambie++;
          }
          if(n==1){
            letra='X';
            }
        if(n==2){
          letra='Y';
          tope=1;
          }
         checar(letra);
       break;
       
       case 'B':
        if(n==0){
          letra='Z';
          }
        checar(letra);
       break;
      
      }                                                      
    if(tecla=='D'){
      uno++;
      n=0;
     // lcd.setCursor(0, 0);
        //lcd.print("K ace");
      }
    if(tecla=='C'){
      lcd.clear();
      uno=0;
      dos=0;
     // lcd.setCursor(0, 0);
        //lcd.print("K ace");
      }

      

     
 }

}

void checar(String letra){
  //oracion[i]=letra;
  if(uno==20){
     dos++;
     uno=0;
  }
  lcd.setCursor(uno, dos);
  lcd.print(letra);
   //x
 
  //++;  //arreglo
  if(tope==0 || n==1){
    n++;
    
     }
  else{
   n=0;
   //uno++; //Esto cambia l X
    }
   //if(cambie++){
   //  uno++;
   // }
    
  }
