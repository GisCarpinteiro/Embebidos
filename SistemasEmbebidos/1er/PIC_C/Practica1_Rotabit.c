#define P1 PORTB
                         //dividir al regreso  entre do
                        ///0x hexadecimal
                        //Ob binario
const int retardo = 500;

void main() {

TRISB=0;    //Salida


     while (1) {
     int i, exponencial;
           P1=1;
           delay_ms(retardo);
           //P1=2;
           //delay_ms(retardo);
            exponencial=2;
           for(i=0; i<7; i++){
                    P1= exponencial;
                    delay_ms(retardo);
                    exponencial=exponencial*2;


                     }
 

     }

}