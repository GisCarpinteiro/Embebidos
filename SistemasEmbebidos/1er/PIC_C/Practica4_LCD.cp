#line 1 "C:/Users/Master/Desktop/CETI/Septimo/SistemasEmbebidos/PIC_C/Practica4_LCD.c"
unsigned short kp;
char keypadPort at PORTD;


void main() {
 TRISC=0;
 Keypad_Init();
 do {
 kp = 0;


 do

 kp = Keypad_Key_Click();
 while (!kp);

 switch (kp) {


 case 1: kp = 1; break;
 case 2: kp = 2; break;
 case 3: kp = 3; break;
 case 4: kp = 10; break;
 case 5: kp = 4; break;
 case 6: kp = 5; break;
 case 7: kp = 6; break;
 case 8: kp = 11; break;
 case 9: kp = 7; break;
 case 10: kp = 8; break;
 case 11: kp = 9; break;
 case 12: kp = 12; break;
 case 13: kp = 33; break;
 case 14: kp = 0; break;
 case 15: kp = 34; break;
 case 16: kp = 13; break;

 }

 PORTC=kp;

 } while (1);
}
