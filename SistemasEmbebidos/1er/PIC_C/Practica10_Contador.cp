#line 1 "C:/Users/home/Desktop/Ceti/Septimo/SistemasEmbebidos/PIC_C/Practica10_Contador.c"
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


char npersonas[5];
int personas;


void main() {


 LCD_Init();
 Lcd_Cmd(_LCD_CURSOR_OFF);

 PORTA = 0;
 TRISA = 1;





 OPTION_REG.F5 = 1;
 OPTION_REG.F3 = 1;

 TMR0 = 0;

 while(1){


 Delay_ms(1000);
 personas = TMR0;
 sprintl(npersonas,"%u",personas);

 if (TMR0 == 22){
 LCD_CMD(_LCD_Clear);
 LCD_out(1,1,"Numero Máximo");
 break;
 }

 else{
 LCD_Out(1,1,"Personas: ");
 LCD_Out(1,12,npersonas);
 }
 }

}
