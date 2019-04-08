#line 1 "C:/Users/Master/Desktop/CETI/Septimo/SistemasEmbebidos/PIC_C/Practica5_Contrasena.c"
unsigned short kp, cnt;
 int valor[5];
 int i, uno;
 int contrasena[5]= {0,7,1,6};


char keypadPort at PORTD;



sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;


void main() {
 cnt = 0;
 Keypad_Init();

 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1, 1, "Contrasena:");


 do {
 do{
 kp = 0;
 do

 kp = Keypad_Key_Click();
 while (!kp);

 switch (kp) {

 case 1: kp = 49; break;
 case 2: kp = 50; break;
 case 3: kp = 51; break;
 case 4: kp = 65; break;
 case 5: kp = 52; break;
 case 6: kp = 53; break;
 case 7: kp = 54; break;
 case 8: kp = 66; break;
 case 9: kp = 55; break;
 case 10: kp = 56; break;
 case 11: kp = 57; break;
 case 12: kp = 67; break;
 case 13: kp = 42; break;
 case 14: kp = 48; break;
 case 15: kp = 35; break;
 case 16: kp = 68; break;

 }

 Lcd_Chr(1, 12, kp);

 switch (kp) {

 case 49: kp = 1; break;
 case 50: kp = 2; break;
 case 51: kp = 3; break;
 case 65: kp = 10; break;
 case 52: kp = 4; break;
 case 53: kp = 5; break;
 case 54: kp = 6; break;
 case 66: kp = 11; break;
 case 55: kp = 7; break;
 case 56: kp = 8; break;
 case 57: kp = 9; break;
 case 67: kp = 12; break;
 case 42: kp = 33; break;
 case 48: kp = 0; break;
 case 35: kp = 34; break;
 case 68: kp = 13; break;

 }
 valor[cnt]=kp;
 cnt++;
 }while(cnt<4);

 uno=1;
 for(i=0; i<4; i++){
 if(valor[i]==contrasena[i]){
 if(i==3){
 uno=0;
 Lcd_Out(2, 1, "Correcto");
 }
 }
 if(valor[i]!=contrasena[i]){
 break;
 }
 }
 if(uno==1)
 Lcd_Out(2, 1, "Incorrecto");


 } while (1);
}
