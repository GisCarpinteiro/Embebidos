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
                                        T1CON = 0; //APAGAR TIMER
                                        TMR1H = 0x3C;
                                        TMR1L = 0xAF;
                                        cnt--;
                                        t1con = 1;
                                        }
                         }  //BANDERA PREGUNTA SI ESTA HABILITADA (SI SE DESBORDA)
                         PIR1.TMR1IF=0;
}

void main() {

 Lcd_Init();                              // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                     // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);
  T1CON= 0b00111000;   //CONFIGURAR TIMER  INTCON= 0xB0                    //ACTIVAR INTERRUPCIONES
  TMR1L= 0xAF;   //15,535
  TMR1H= 0x3C;
  T1CON = 1;                                     //PONE A CONTAR EL TIMER
  PIE1.TMR1IE = 1; //ACTIVA BANDERA DESBORDAMIENTO


                                              ///hacer lo del tiempo
}