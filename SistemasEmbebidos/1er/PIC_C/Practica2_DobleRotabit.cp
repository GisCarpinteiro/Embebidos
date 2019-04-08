#line 1 "C:/Users/Master/Desktop/CETI/Septimo/SistemasEmbebidos/PIC_C/Practica2_DobleRotabit.c"




const int retardo = 500;

void main() {
int i, exponencial;
TRISB=0;


 while (1) {
  PORTB =1;
 delay_ms(retardo);
 exponencial=2;
 for(i=0; i<7; i++){
  PORTB = exponencial;
 delay_ms(retardo);
 exponencial=exponencial*2;
 }
 for(i=0; i<=6; i++){
 exponencial=exponencial/2;
  PORTB =exponencial;
 delay_ms(retardo);
 }


 }

}
