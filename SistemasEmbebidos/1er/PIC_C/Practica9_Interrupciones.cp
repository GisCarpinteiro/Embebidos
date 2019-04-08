#line 1 "C:/Users/home/Desktop/Ceti/Septimo/SistemasEmbebidos/PIC_C/Practica9_Interrupciones.c"
sbit LCD_RS at RC4_bit;
sbit LCD_EN at RC5_bit;
sbit LCD_D4 at RC0_bit;
sbit LCD_D5 at RC1_bit;
sbit LCD_D6 at RC2_bit;
sbit LCD_D7 at RC3_bit;

sbit LCD_RS_Direction at TRISC4_bit;
sbit LCD_EN_Direction at TRISC5_bit;
sbit LCD_D4_Direction at TRISC0_bit;
sbit LCD_D5_Direction at TRISC1_bit;
sbit LCD_D6_Direction at TRISC2_bit;
sbit LCD_D7_Direction at TRISC3_bit;


int aux[8];
int reg[]={49,54,49,48,48,55,49,54};
int x;
int i=0;
int bandera=0;

void interrupt(){
bandera=3;
intf_bit=0;
}

void main() {
GIE_BIT=1;
INTE_BIT=1;
lcd_init();
Lcd_Cmd(_LCD_CURSOR_OFF);
do{
 lcd_cmd(_lcd_clear);
 for(x=0;x<=7;x++){
 aux[x]=reg[x];
 lcd_CHR(1,x+1,reg[x]);
 delay_ms(1000);
 if(bandera==3){
 lcd_cmd(_lcd_clear);
 lcd_out(1,1, "Gisel");
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 for(i=0;i<=x;i++){
 lcd_Chr(1,i+1,aux[i]);
 }
 bandera=0;
 }
 }
} while(1);
}
