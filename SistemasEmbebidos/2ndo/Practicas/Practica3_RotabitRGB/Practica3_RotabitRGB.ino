int Rojo1 = 2;//1
int Verde1 = 3;//1
int Azul1 = 4; //1

int Rojo2 = 5;//2
int Verde2 = 6;//2
int Azul2 = 7; //2

int Rojo3 = 8;//3
int Verde3 = 9;//3
int Azul3 = 10; //3

int Rojo4 = 11;//3
int Verde4 = 12;//3
int Azul4 = 13; //3
int i=0;
int color[13]{Rojo1, Verde1, Azul1, Rojo2, Verde2, Azul2, Rojo3, Verde3, Azul3, Rojo4, Verde4, Azul4};
void setup() {
pinMode(Rojo1, OUTPUT);
pinMode(Verde1, OUTPUT);
pinMode(Azul1, OUTPUT);
pinMode(Rojo2, OUTPUT);
pinMode(Verde2, OUTPUT);
pinMode(Azul2, OUTPUT);
pinMode(Rojo3, OUTPUT);
pinMode(Verde3, OUTPUT);
pinMode(Azul3, OUTPUT);
pinMode(Rojo4, OUTPUT);
pinMode(Verde4, OUTPUT);
pinMode(Azul4, OUTPUT);

 convertir(0, 0, 0, Rojo1, Verde1, Azul1);
  convertir(0, 0, 0, Rojo2, Verde2, Azul2);
  convertir(0, 0, 0, Rojo3, Verde3, Azul3);
  convertir(0, 0, 0, Rojo4, Verde4, Azul4);
  delay(2000);
   i++;
}
void convertir(int r,int v, int a, int nr, int nv, int na){
r= 255-r;
v= 255-v;
a= 255-a;
  analogWrite(nr, r );
  analogWrite(nv, v);
  analogWrite(na, a);
  
}

void loop() {

if(i==0){
  convertir(0, 0, 0, Rojo1, Verde1, Azul1);
  convertir(0, 0, 0, Rojo2, Verde2, Azul2);
  convertir(0, 0, 0, Rojo3, Verde3, Azul3);
  convertir(0, 0, 0, Rojo4, Verde4, Azul4);
  delay(1000);
   i++;
}


  
  switch(i)
  {
    case 1:
    convertir(255, 0, 0, Rojo1, Verde1, Azul1);
    delay(1000);
    i++;
    break;
    case 2:
    convertir(255, 0, 0, Rojo2, Verde2, Azul2);
    convertir(0, 0, 255, Rojo1, Verde1, Azul1);
    delay(1000);
    i++;
    break;
    case 3:
    convertir(255, 0, 0, Rojo3, Verde3, Azul3);
    convertir(0, 0, 255, Rojo2, Verde2, Azul2);
    convertir(0, 255, 0, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
    case 4:
    convertir(255, 0, 0, Rojo4, Verde4, Azul4);
    convertir(0, 0, 255, Rojo3, Verde3, Azul3);
    convertir(0, 255, 0, Rojo2, Verde2, Azul2);
    convertir(255, 255, 255, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
    case 5:
    convertir(0, 0, 255, Rojo4, Verde4, Azul4);
    convertir(0, 255, 0, Rojo3, Verde3, Azul3);
    convertir(255, 255, 255, Rojo2, Verde2, Azul2);
     convertir(10, 35, 123, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
     case 6:
    convertir(0, 255, 0, Rojo4, Verde4, Azul4);
    convertir(255, 255, 255, Rojo3, Verde3, Azul3);
    convertir(10, 35, 123, Rojo2, Verde2, Azul2);
    convertir(100, 200, 20, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
    case 7:
    convertir(255, 255, 255, Rojo4, Verde4, Azul4);
    convertir(10, 35, 123, Rojo3, Verde3, Azul3);
    convertir(100, 200, 20, Rojo2, Verde2, Azul2);
    convertir(0, 0, 0, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
    case 8:
    convertir(10, 35, 123, Rojo4, Verde4, Azul4);
    convertir(100, 200, 20, Rojo3, Verde3, Azul3);
    convertir(0, 0, 0, Rojo2, Verde2, Azul2);
    convertir(0, 0, 0, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
    case 9:
    convertir(100, 200, 20, Rojo4, Verde4, Azul4);
     convertir(0, 0, 0, Rojo3, Verde3, Azul3);
    convertir(0, 0, 0, Rojo2, Verde2, Azul2);
    convertir(0, 0, 0, Rojo1, Verde1, Azul1);
   
     delay(1000);
    i++;
    break;
    case 10:
    convertir(0, 0, 0, Rojo4, Verde4, Azul4);
     convertir(0, 0, 0, Rojo3, Verde3, Azul3);
    convertir(0, 0, 0, Rojo2, Verde2, Azul2);
    convertir(0, 0, 0, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
     case 11:
    convertir(255, 0, 0, Rojo4, Verde4, Azul4);
     convertir(255, 0, 0, Rojo3, Verde3, Azul3);
    convertir(255, 0, 0, Rojo2, Verde2, Azul2);
    convertir(255, 0, 0, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
     case 12:
    convertir(0, 0, 255, Rojo4, Verde4, Azul4);
     convertir(0, 0, 255, Rojo3, Verde3, Azul3);
    convertir(0, 0, 255, Rojo2, Verde2, Azul2);
    convertir(0, 0, 255, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
      case 13:
    convertir(0, 255, 0, Rojo4, Verde4, Azul4);
     convertir(0, 255, 0, Rojo3, Verde3, Azul3);
    convertir(0, 255, 0, Rojo2, Verde2, Azul2);
    convertir(0, 255, 0, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
    case 14:
    convertir(255, 255, 255, Rojo4, Verde4, Azul4);
     convertir(255, 255, 255, Rojo3, Verde3, Azul3);
    convertir(255, 255, 255, Rojo2, Verde2, Azul2);
    convertir(255, 255, 255, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
     case 15:
    convertir(10, 35, 123, Rojo4, Verde4, Azul4);
     convertir(10, 35, 123, Rojo3, Verde3, Azul3);
    convertir(10, 35, 123, Rojo2, Verde2, Azul2);
     convertir(10, 35, 123, Rojo1, Verde1, Azul1);
     delay(1000);
    i++;
    break;
    case 16:
    convertir(100, 200, 20, Rojo4, Verde4, Azul4);
     convertir(100, 200, 20, Rojo3, Verde3, Azul3);
    convertir(100, 200, 20, Rojo2, Verde2, Azul2);
     convertir(100, 200, 20, Rojo1, Verde1, Azul1);
     delay(1000);
    i=0;
   
    break;
  }
  
}
