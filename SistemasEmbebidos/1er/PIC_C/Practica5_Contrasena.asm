
_main:

;Practica5_Contrasena.c,26 :: 		void main() {
;Practica5_Contrasena.c,27 :: 		cnt = 0;                                 // Reset counter
	CLRF       _cnt+0
;Practica5_Contrasena.c,28 :: 		Keypad_Init();                           // Initialize Keypad
	CALL       _Keypad_Init+0
;Practica5_Contrasena.c,30 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;Practica5_Contrasena.c,31 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica5_Contrasena.c,32 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica5_Contrasena.c,33 :: 		Lcd_Out(1, 1, "Contrasena:");                 // Write message text on LCD
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Practica5_Contrasena+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica5_Contrasena.c,36 :: 		do {               //primer
L_main0:
;Practica5_Contrasena.c,37 :: 		do{                              //para n vecs
L_main3:
;Practica5_Contrasena.c,38 :: 		kp = 0;                                // Reset key code variable
	CLRF       _kp+0
;Practica5_Contrasena.c,39 :: 		do                    //segundo
L_main6:
;Practica5_Contrasena.c,41 :: 		kp = Keypad_Key_Click();
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;Practica5_Contrasena.c,42 :: 		while (!kp); //segundo
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main6
;Practica5_Contrasena.c,44 :: 		switch (kp) {
	GOTO       L_main9
;Practica5_Contrasena.c,46 :: 		case  1: kp = 49; break; // 1        // Uncomment this block for keypad4x4
L_main11:
	MOVLW      49
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,47 :: 		case  2: kp = 50; break; // 2
L_main12:
	MOVLW      50
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,48 :: 		case  3: kp = 51; break; // 3
L_main13:
	MOVLW      51
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,49 :: 		case  4: kp = 65; break; // A
L_main14:
	MOVLW      65
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,50 :: 		case  5: kp = 52; break; // 4
L_main15:
	MOVLW      52
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,51 :: 		case  6: kp = 53; break; // 5
L_main16:
	MOVLW      53
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,52 :: 		case  7: kp = 54; break; // 6
L_main17:
	MOVLW      54
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,53 :: 		case  8: kp = 66; break; // B
L_main18:
	MOVLW      66
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,54 :: 		case  9: kp = 55; break; // 7
L_main19:
	MOVLW      55
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,55 :: 		case 10: kp = 56; break; // 8
L_main20:
	MOVLW      56
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,56 :: 		case 11: kp = 57; break; // 9
L_main21:
	MOVLW      57
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,57 :: 		case 12: kp = 67; break; // C
L_main22:
	MOVLW      67
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,58 :: 		case 13: kp = 42; break; // *
L_main23:
	MOVLW      42
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,59 :: 		case 14: kp = 48; break; // 0
L_main24:
	MOVLW      48
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,60 :: 		case 15: kp = 35; break; // #
L_main25:
	MOVLW      35
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,61 :: 		case 16: kp = 68; break; // D
L_main26:
	MOVLW      68
	MOVWF      _kp+0
	GOTO       L_main10
;Practica5_Contrasena.c,63 :: 		}
L_main9:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main11
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main12
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_main13
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main14
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_main15
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_main16
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_main17
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_main18
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_main19
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_main20
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_main21
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_main22
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_main23
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_main24
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_main25
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_main26
L_main10:
;Practica5_Contrasena.c,65 :: 		Lcd_Chr(1, 12, kp);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Practica5_Contrasena.c,67 :: 		switch (kp) {
	GOTO       L_main27
;Practica5_Contrasena.c,69 :: 		case  49: kp = 1; break; // 1        // Uncomment this block for keypad4x4
L_main29:
	MOVLW      1
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,70 :: 		case  50: kp = 2; break; // 2
L_main30:
	MOVLW      2
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,71 :: 		case  51: kp = 3; break; // 3
L_main31:
	MOVLW      3
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,72 :: 		case  65: kp = 10; break; // A
L_main32:
	MOVLW      10
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,73 :: 		case  52: kp = 4; break; // 4
L_main33:
	MOVLW      4
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,74 :: 		case  53: kp = 5; break; // 5
L_main34:
	MOVLW      5
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,75 :: 		case  54: kp = 6; break; // 6
L_main35:
	MOVLW      6
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,76 :: 		case  66: kp = 11; break; // B
L_main36:
	MOVLW      11
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,77 :: 		case  55: kp = 7; break; // 7
L_main37:
	MOVLW      7
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,78 :: 		case 56: kp = 8; break; // 8
L_main38:
	MOVLW      8
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,79 :: 		case 57: kp = 9; break; // 9
L_main39:
	MOVLW      9
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,80 :: 		case 67: kp = 12; break; // C
L_main40:
	MOVLW      12
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,81 :: 		case 42: kp = 33; break; // *
L_main41:
	MOVLW      33
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,82 :: 		case 48: kp = 0; break; // 0
L_main42:
	CLRF       _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,83 :: 		case 35: kp = 34; break; // #
L_main43:
	MOVLW      34
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,84 :: 		case 68: kp = 13; break; // D
L_main44:
	MOVLW      13
	MOVWF      _kp+0
	GOTO       L_main28
;Practica5_Contrasena.c,86 :: 		}
L_main27:
	MOVF       _kp+0, 0
	XORLW      49
	BTFSC      STATUS+0, 2
	GOTO       L_main29
	MOVF       _kp+0, 0
	XORLW      50
	BTFSC      STATUS+0, 2
	GOTO       L_main30
	MOVF       _kp+0, 0
	XORLW      51
	BTFSC      STATUS+0, 2
	GOTO       L_main31
	MOVF       _kp+0, 0
	XORLW      65
	BTFSC      STATUS+0, 2
	GOTO       L_main32
	MOVF       _kp+0, 0
	XORLW      52
	BTFSC      STATUS+0, 2
	GOTO       L_main33
	MOVF       _kp+0, 0
	XORLW      53
	BTFSC      STATUS+0, 2
	GOTO       L_main34
	MOVF       _kp+0, 0
	XORLW      54
	BTFSC      STATUS+0, 2
	GOTO       L_main35
	MOVF       _kp+0, 0
	XORLW      66
	BTFSC      STATUS+0, 2
	GOTO       L_main36
	MOVF       _kp+0, 0
	XORLW      55
	BTFSC      STATUS+0, 2
	GOTO       L_main37
	MOVF       _kp+0, 0
	XORLW      56
	BTFSC      STATUS+0, 2
	GOTO       L_main38
	MOVF       _kp+0, 0
	XORLW      57
	BTFSC      STATUS+0, 2
	GOTO       L_main39
	MOVF       _kp+0, 0
	XORLW      67
	BTFSC      STATUS+0, 2
	GOTO       L_main40
	MOVF       _kp+0, 0
	XORLW      42
	BTFSC      STATUS+0, 2
	GOTO       L_main41
	MOVF       _kp+0, 0
	XORLW      48
	BTFSC      STATUS+0, 2
	GOTO       L_main42
	MOVF       _kp+0, 0
	XORLW      35
	BTFSC      STATUS+0, 2
	GOTO       L_main43
	MOVF       _kp+0, 0
	XORLW      68
	BTFSC      STATUS+0, 2
	GOTO       L_main44
L_main28:
;Practica5_Contrasena.c,87 :: 		valor[cnt]=kp;                // Print key ASCII value on LCD
	MOVF       _cnt+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _valor+0
	MOVWF      FSR
	MOVF       _kp+0, 0
	MOVWF      INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
;Practica5_Contrasena.c,88 :: 		cnt++;
	INCF       _cnt+0, 1
;Practica5_Contrasena.c,89 :: 		}while(cnt<4); //para n veces
	MOVLW      4
	SUBWF      _cnt+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;Practica5_Contrasena.c,91 :: 		uno=1;
	MOVLW      1
	MOVWF      _uno+0
	MOVLW      0
	MOVWF      _uno+1
;Practica5_Contrasena.c,92 :: 		for(i=0; i<4; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main45:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main53
	MOVLW      4
	SUBWF      _i+0, 0
L__main53:
	BTFSC      STATUS+0, 0
	GOTO       L_main46
;Practica5_Contrasena.c,93 :: 		if(valor[i]==contrasena[i]){
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _valor+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R3+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R3+1
	MOVF       R0+0, 0
	ADDLW      _contrasena+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVF       R3+1, 0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main54
	MOVF       R1+0, 0
	XORWF      R3+0, 0
L__main54:
	BTFSS      STATUS+0, 2
	GOTO       L_main48
;Practica5_Contrasena.c,94 :: 		if(i==3){
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main55
	MOVLW      3
	XORWF      _i+0, 0
L__main55:
	BTFSS      STATUS+0, 2
	GOTO       L_main49
;Practica5_Contrasena.c,95 :: 		uno=0;
	CLRF       _uno+0
	CLRF       _uno+1
;Practica5_Contrasena.c,96 :: 		Lcd_Out(2, 1, "Correcto");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Practica5_Contrasena+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica5_Contrasena.c,97 :: 		}
L_main49:
;Practica5_Contrasena.c,98 :: 		}
L_main48:
;Practica5_Contrasena.c,99 :: 		if(valor[i]!=contrasena[i]){
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _valor+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R3+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R3+1
	MOVF       R0+0, 0
	ADDLW      _contrasena+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVF       R3+1, 0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main56
	MOVF       R1+0, 0
	XORWF      R3+0, 0
L__main56:
	BTFSC      STATUS+0, 2
	GOTO       L_main50
;Practica5_Contrasena.c,100 :: 		break;
	GOTO       L_main46
;Practica5_Contrasena.c,101 :: 		}
L_main50:
;Practica5_Contrasena.c,92 :: 		for(i=0; i<4; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Practica5_Contrasena.c,102 :: 		}
	GOTO       L_main45
L_main46:
;Practica5_Contrasena.c,103 :: 		if(uno==1)
	MOVLW      0
	XORWF      _uno+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main57
	MOVLW      1
	XORWF      _uno+0, 0
L__main57:
	BTFSS      STATUS+0, 2
	GOTO       L_main51
;Practica5_Contrasena.c,104 :: 		Lcd_Out(2, 1, "Incorrecto");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Practica5_Contrasena+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main51:
;Practica5_Contrasena.c,107 :: 		} while (1);   //primer
	GOTO       L_main0
;Practica5_Contrasena.c,108 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
