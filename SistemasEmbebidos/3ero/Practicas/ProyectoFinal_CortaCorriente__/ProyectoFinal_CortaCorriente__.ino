#include <TimeAlarms.h>
#include<Keypad.h>
#include "RTClib.h"
#include <Wire.h>
#include  <LiquidCrystal.h>
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
const byte filas = 4;
const byte columnas = 4;
byte pinesF[filas] = {53,51,49,47};
byte pinesC[columnas] = {45,43,41,39};
char teclas[filas][columnas] = {
 
 {'1','2','3','A'},
 {'4','5','6','B'},
 {'7','8','9','C'},
 {'*','0','#','D'}
};
Keypad teclado = Keypad(makeKeymap(teclas), pinesF, pinesC, filas, columnas);
char tecla;
int rele1=8, rele2=9, i;
String hora[4], minutos[4], segundos[4];
int h=0, m=0, s=0;
int bandera=0, banderafin=0;
String totalh, totalm, totals;
int resh=0, resm=0, ress=0;

RTC_DS1307 rtc;

void setup() {
 pinMode(rele1, OUTPUT);
 pinMode(rele2, OUTPUT);
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
  //MostrarHora(now);
  lcd.setCursor(0, 1);
  lcd.print("Seleccione enchufe(1 o 2) ");
  tecla = teclado.getKey();
  lcd.print(tecla);
  if(tecla == '1'){ 
          programar(8);
    }
  if(tecla == '2'){
        programar(9);
  }

}
void programar(int rele){
if(banderafin==0){
   lcd.setCursor(0, 1);
    lcd.print("Inserte la hora de inicio");
    delay(1000);
  pedirdatos();
  if(bandera==3){
    Alarm.alarmRepeat(resh, resm, ress, EventoCorriente(rele));  
    //Alarm.alarmRepeat(7, 0, 0, EventoCortaCorriente(rele)); 
    Alarm.delay(1000);
    banderafin=1;
    bandera=0;
    m=0; s=0; h=0;
    }
    
  }

  if(banderafin==1){
    lcd.setCursor(0, 1);
    lcd.print("Inserte la hora de fin");
    delay(1000);
     pedirdatos();
      if(bandera==3){
     // Alarm.alarmRepeat(resh, resm, ress, EventoCorriente(rele));  
      Alarm.alarmRepeat(resh, resm, ress, EventoCortaCorriente(rele)); 
      Alarm.delay(1000);
     // banderafin=1;
       }
    }
       
  }

  void pedirdatos(){
   
    if(bandera==0){ //talvez aqui es while
      eliminarfila(1);
      Hora();
      }
    if(bandera==1){
      eliminarfila(1);
      Minuto();
      }
    if(bandera==2){
      eliminarfila(1);
      Segundo();
      }
    
    }

 void Hora(){
    if(tecla!='#' && h<2){
      lcd.setCursor(0, 1);
      lcd.print("Inserte la hora ");
      tecla = teclado.getKey();
      hora[h]=tecla;
      h++;
      totalh= hora[0]+ hora[1];
      lcd.setCursor(0, 2);
      lcd.print(tecla);
      resh=totalh.toInt();
      lcd.setCursor(0, 3);
      lcd.print(resh);
      lcd.print(":");
    }
    if(tecla=='#' && h>=1) //No estoy segura de la h
      bandera=1;
  }

  void Minuto(){
     if(tecla!='#' && m<2){
      lcd.setCursor(0, 1);
      lcd.print("Inserte los minutos");
      tecla = teclado.getKey();
      minutos[m]=tecla;
      m++;
      totalm= minutos[0]+ minutos[1];
      lcd.setCursor(0, 2);
      lcd.print(tecla);
      resm=totalm.toInt();
      lcd.setCursor(4, 3);
      lcd.print(resm);
      lcd.print(":");
    }
    if(tecla=='#' && m>=1)
      bandera=2;
    
    }
  void Segundo(){
     if(tecla!='#' && s<2){
      lcd.setCursor(0, 1);
      lcd.print("Inserte los segundos ");
      tecla = teclado.getKey();
      segundos[s]=tecla;
      s++;
      totals= segundos[0]+ segundos[1];
      lcd.setCursor(0, 2);
      lcd.print(tecla);
      ress=totals.toInt();
      lcd.setCursor(7, 3);
      lcd.print(ress);
      
    }
    if(tecla=='#' && s>=1)
      bandera=3;
    }

int EventoCorriente(int rele){
    lcd.print("Mandando Luz");
    digitalWrite(rele, HIGH);
  }
int EventoCortaCorriente(int rele){
    lcd.setCursor(0, 3);
    lcd.print("Ya no hay Luz");
    digitalWrite(rele, LOW);
  }

  
void eliminarfila(int fila){
        for(i=0; i<20; i++){
          lcd.setCursor(i, fila);
          lcd.print(" ");
          }
  }

void MostrarHora(DateTime now){
  lcd.setCursor(0, 0);
  if(now.second()<11){
    lcd.setCursor(10, 0);
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
