#line 1 "C:/Users/Master/Desktop/CETI/SistemasEmbebidos/PIC_C/Practica1_Rotabit.c"




const int retardo = 500;

void main() {

TRISB=0;


 while (1) {
 int i, exponencial;
  PORTB =1;
 delay_ms(retardo);


 exponencial=2;
 for(i=0; i<7; i++){
  PORTB = exponencial;
 delay_ms(retardo);
 exponencial=exponencial*2;


 }


 }

}
