
_main:

;Practica4_LCD.c,5 :: 		void main() {
;Practica4_LCD.c,6 :: 		TRISC=0;                  //salida
	CLRF       TRISC+0
;Practica4_LCD.c,7 :: 		Keypad_Init();
	CALL       _Keypad_Init+0
;Practica4_LCD.c,8 :: 		do {
L_main0:
;Practica4_LCD.c,9 :: 		kp = 0;                                // Reset key code variable
	CLRF       _kp+0
;Practica4_LCD.c,12 :: 		do
L_main3:
;Practica4_LCD.c,14 :: 		kp = Keypad_Key_Click();             // Store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;Practica4_LCD.c,15 :: 		while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main3
;Practica4_LCD.c,17 :: 		switch (kp) {
	GOTO       L_main6
;Practica4_LCD.c,20 :: 		case  1: kp = 1; break; // 1        // Uncomment this block for keypad4x4
L_main8:
	MOVLW      1
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,21 :: 		case  2: kp = 2; break; // 2
L_main9:
	MOVLW      2
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,22 :: 		case  3: kp = 3; break; // 3
L_main10:
	MOVLW      3
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,23 :: 		case  4: kp = 10; break; // A
L_main11:
	MOVLW      10
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,24 :: 		case  5: kp = 4; break; // 4
L_main12:
	MOVLW      4
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,25 :: 		case  6: kp = 5; break; // 5
L_main13:
	MOVLW      5
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,26 :: 		case  7: kp = 6; break; // 6
L_main14:
	MOVLW      6
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,27 :: 		case  8: kp = 11; break; // B
L_main15:
	MOVLW      11
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,28 :: 		case  9: kp = 7; break; // 7
L_main16:
	MOVLW      7
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,29 :: 		case 10: kp = 8; break; // 8
L_main17:
	MOVLW      8
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,30 :: 		case 11: kp = 9; break; // 9
L_main18:
	MOVLW      9
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,31 :: 		case 12: kp = 12; break; // C
L_main19:
	MOVLW      12
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,32 :: 		case 13: kp = 33; break; // *
L_main20:
	MOVLW      33
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,33 :: 		case 14: kp = 0; break; // 0
L_main21:
	CLRF       _kp+0
	GOTO       L_main7
;Practica4_LCD.c,34 :: 		case 15: kp = 34; break; // #
L_main22:
	MOVLW      34
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,35 :: 		case 16: kp = 13; break; // D
L_main23:
	MOVLW      13
	MOVWF      _kp+0
	GOTO       L_main7
;Practica4_LCD.c,37 :: 		}
L_main6:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main8
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main9
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_main10
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main11
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_main12
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_main13
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_main14
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_main15
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_main16
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_main17
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_main18
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_main19
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_main20
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_main21
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_main22
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_main23
L_main7:
;Practica4_LCD.c,39 :: 		PORTC=kp;
	MOVF       _kp+0, 0
	MOVWF      PORTC+0
;Practica4_LCD.c,41 :: 		} while (1);
	GOTO       L_main0
;Practica4_LCD.c,42 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
