#include  <LiquidCrystal.h>
LiquidCrystal lcd(28, 30, 32, 34, 36, 38);
int inter=2;
int bandera=0;
int aux[8];
int reg[]={1,6,1,0,0,7,1,6};
int x=0, i=0;

void contar(){
  bandera=1;
  }

void setup() {
  lcd.begin(20, 4);
  pinMode(inter, INPUT);
   

}

void loop() {
    attachInterrupt(digitalPinToInterrupt(inter), contar, RISING);
    lcd.clear();
    for(x=0;x<=7;x++){
      aux[x]=reg[x];
      lcd.setCursor(x+1, 0);
      lcd.print(reg[x]);
      delay(1000);

      if(bandera==1){
        lcd.clear();
        lcd.setCursor(1, 0);
        lcd.print("Gisel");
        delay(1000);
        lcd.clear();
          for(i=0;i<=x;i++){
             lcd.setCursor(i+1, 0);
             lcd.print(aux[i]);
         }
        bandera=0;
        
        }
  }
}
