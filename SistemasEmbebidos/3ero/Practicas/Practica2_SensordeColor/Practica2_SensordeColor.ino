#include  <LiquidCrystal.h>
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
const int s0 = 1;  
const int s1 = 2;  
const int s2 = 3;  
const int s3 = 4;  
const int out = 5;   
int rojo = 0;  
int verde = 0;  
int azul = 0;  

void setup() {
  lcd.begin(20, 4); 
  Serial.begin(9600);
  pinMode(s0,OUTPUT);  
  pinMode(s1,OUTPUT);  
  pinMode(s2,OUTPUT);  
  pinMode(s3,OUTPUT);  
  pinMode(out,INPUT);   
  digitalWrite(s0,HIGH);  
  digitalWrite(s1,HIGH);  

}

void loop(){  
  color(); 
  //lcd.print("   ");  
   //lcd.print(rojo, DEC);  
  //lcd.print("   ");  
  //lcd.print(verde, DEC);  
  //lcd.print("   ");  
 // lcd.print(azul, DEC);  

  lcd.setCursor(0, 0);
  lcd.print(rojo);
  lcd.print("   ");  
  lcd.print(verde);
  lcd.print("   ");    
  lcd.print(azul);  

  if (rojo < azul && verde > azul && rojo <= 16) 
  {  
    lcd.clear();
   lcd.print("Naranja");    
  }   
  
  if (rojo < azul && verde > azul && rojo < 35 && rojo>16) 
  {  
    lcd.clear();
   lcd.print("Rojo");    
  }   
  else if (azul < rojo && azul < verde && verde > rojo)  //verde menor a rojo
  {  
    lcd.clear();
   lcd.print("Azul");        //7 9 7 
  }  

  else if (rojo > verde && azul > verde )  
  {  
   lcd.clear();
   lcd.print("Verde");       
  }  
  else{
  lcd.print("  ");  
  }
  delay(900);     
  }  
    
void color()  
{    
  digitalWrite(s2, LOW);  
  digitalWrite(s3, LOW);   
  rojo = pulseIn(out, digitalRead(out) == HIGH ? LOW : HIGH);  
  digitalWrite(s3, HIGH);   
  azul = pulseIn(out, digitalRead(out) == HIGH ? LOW : HIGH);  
  digitalWrite(s2, HIGH);    
  verde = pulseIn(out, digitalRead(out) == HIGH ? LOW : HIGH);  
}
