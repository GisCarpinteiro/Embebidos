int uno = 28;
int dos = 30;
int tres = 32;
int cuatro = 34;
int cinco = 36;
int seis = 38;
int siete = 40;
int ocho = 42;
int arreglo[10]; 
int j=0;

void setup() {
  // put your setup code here, to run once:
pinMode(uno, OUTPUT);
pinMode(dos, OUTPUT);
pinMode(tres, OUTPUT);
pinMode(cuatro, OUTPUT);
pinMode(cinco, OUTPUT);
pinMode(seis, OUTPUT);
pinMode(siete, OUTPUT);
pinMode(ocho, OUTPUT);

arreglo[1] = uno;
arreglo[2] = dos; 
arreglo[3] = tres;
arreglo[4] = cuatro;
arreglo[5] = cinco;
arreglo[6] = seis; 
arreglo[7] = siete;
arreglo[8] = ocho;  
}

void mover(){
      
        for(int i=0; i<=7; i++){
          if(j==0){
            digitalWrite(arreglo[j], HIGH);
            delay(1000);
            j++;
            }
            if(j>0){
              digitalWrite(arreglo[j-1], LOW);
              digitalWrite(arreglo[j], HIGH);
              delay(1000);
              j++;
            }

            if(j==9){
             
              break;
              }
        }

      for(int i=0; i<=7; i++){
        if(j==9)
          j--;
        if(j<9){
              digitalWrite(arreglo[j-1], HIGH);
              digitalWrite(arreglo[j], LOW);
              delay(1000);
              j--;
            }
        
        }
        
  }



void loop() {
 //digitalWrite(uno, HIGH);
 //digitalWrite(dos, HIGH);
 //digitalWrite(tres, HIGH);
 mover();
  
}
