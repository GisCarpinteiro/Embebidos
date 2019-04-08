#line 1 "C:/Users/Master/Desktop/CETI/Septimo/SistemasEmbebidos/PIC_C/Practica8_ADC.c"
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

 int valor;
 char res[5];
void main() {
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Adc_Init();
 ADCON1 = 0x80;
 TRISA = 1;
 while(1){
 valor = ((ADC_Read(1) * 18) / 1023);
 IntToStr(valor,res);
 LCD_Out(1, 1, "Voltaje:");
 LCD_Out(1,10,res);
 LCD_Out(1, 14, "mV");

 }

}
