#line 1 "C:/Users/Master/Desktop/CETI/Septimo/SistemasEmbebidos/PIC_C/Practica11_Reloj.c"
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

 char Msegundos[10];
 int cnt, segundos;

void interrupt(){
 if(PIR1.TMR1IF ==1){
 if(cnt>0){
 T1CON = 0;
 TMR1H = 0x3C;
 TMR1L = 0xAF;
 cnt--;
 t1con = 1;
 }
 }
 PIR1.TMR1IF=0;
}

void main() {

 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 T1CON= 0b00111000;
 TMR1L= 0xAF;
 TMR1H= 0x3C;
 T1CON = 1;
 PIE1.TMR1IE = 1;

}
