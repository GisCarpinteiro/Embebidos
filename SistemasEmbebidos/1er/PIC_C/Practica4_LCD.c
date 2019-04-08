unsigned short kp;
char  keypadPort at PORTD;


void main() {
     TRISC=0;                  //salida
     Keypad_Init();
     do {
    kp = 0;                                // Reset key code variable

    // Wait for key to be pressed and released
    do
      // kp = Keypad_Key_Press();          // Store key code in kp variable
      kp = Keypad_Key_Click();             // Store key code in kp variable
    while (!kp);

    switch (kp) {


      case  1: kp = 1; break; // 1        // Uncomment this block for keypad4x4
      case  2: kp = 2; break; // 2
      case  3: kp = 3; break; // 3
      case  4: kp = 10; break; // A
      case  5: kp = 4; break; // 4
      case  6: kp = 5; break; // 5
      case  7: kp = 6; break; // 6
      case  8: kp = 11; break; // B
      case  9: kp = 7; break; // 7
      case 10: kp = 8; break; // 8
      case 11: kp = 9; break; // 9
      case 12: kp = 12; break; // C
      case 13: kp = 33; break; // *
      case 14: kp = 0; break; // 0
      case 15: kp = 34; break; // #
      case 16: kp = 13; break; // D

    }

    PORTC=kp;

          } while (1);
}