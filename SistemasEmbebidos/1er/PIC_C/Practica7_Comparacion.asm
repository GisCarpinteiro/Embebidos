
_Convertir:

;Practica7_Comparacion.c,29 :: 		void Convertir(int kp){
;Practica7_Comparacion.c,30 :: 		switch (kp) {
	GOTO       L_Convertir0
;Practica7_Comparacion.c,32 :: 		case  49: kp = 1; break; // 1        // Uncomment this block for keypad4x4
L_Convertir2:
	MOVLW      1
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,33 :: 		case  50: kp = 2; break; // 2
L_Convertir3:
	MOVLW      2
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,34 :: 		case  51: kp = 3; break; // 3
L_Convertir4:
	MOVLW      3
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,35 :: 		case  65: kp = 10; break; // A
L_Convertir5:
	MOVLW      10
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,36 :: 		case  52: kp = 4; break; // 4
L_Convertir6:
	MOVLW      4
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,37 :: 		case  53: kp = 5; break; // 5
L_Convertir7:
	MOVLW      5
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,38 :: 		case  54: kp = 6; break; // 6
L_Convertir8:
	MOVLW      6
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,39 :: 		case  66: kp = 11; break; // B
L_Convertir9:
	MOVLW      11
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,40 :: 		case  55: kp = 7; break; // 7
L_Convertir10:
	MOVLW      7
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,41 :: 		case 56: kp = 8; break; // 8
L_Convertir11:
	MOVLW      8
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,42 :: 		case 57: kp = 9; break; // 9
L_Convertir12:
	MOVLW      9
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,43 :: 		case 67: kp = 12; break; // C
L_Convertir13:
	MOVLW      12
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,44 :: 		case 42: kp = 33; break; // *
L_Convertir14:
	MOVLW      33
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,45 :: 		case 48: kp = 0; break; // 0
L_Convertir15:
	CLRF       FARG_Convertir_kp+0
	CLRF       FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,46 :: 		case 35: kp = 34; break; // #
L_Convertir16:
	MOVLW      34
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,47 :: 		case 68: kp = 13; break; // D
L_Convertir17:
	MOVLW      13
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;Practica7_Comparacion.c,49 :: 		}
L_Convertir0:
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir78
	MOVLW      49
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir78:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir2
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir79
	MOVLW      50
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir79:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir3
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir80
	MOVLW      51
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir80:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir4
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir81
	MOVLW      65
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir81:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir5
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir82
	MOVLW      52
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir82:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir6
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir83
	MOVLW      53
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir83:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir7
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir84
	MOVLW      54
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir84:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir8
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir85
	MOVLW      66
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir85:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir9
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir86
	MOVLW      55
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir86:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir10
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir87
	MOVLW      56
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir87:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir11
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir88
	MOVLW      57
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir88:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir12
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir89
	MOVLW      67
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir89:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir13
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir90
	MOVLW      42
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir90:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir14
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir91
	MOVLW      48
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir91:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir15
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir92
	MOVLW      35
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir92:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir16
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir93
	MOVLW      68
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir93:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir17
L_Convertir1:
;Practica7_Comparacion.c,51 :: 		}
L_end_Convertir:
	RETURN
; end of _Convertir

_main:

;Practica7_Comparacion.c,52 :: 		void main() {
;Practica7_Comparacion.c,54 :: 		cnt = 0;                                 // Reset counter
	CLRF       _cnt+0
;Practica7_Comparacion.c,55 :: 		Keypad_Init();                           // Initialize Keypad
	CALL       _Keypad_Init+0
;Practica7_Comparacion.c,56 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;Practica7_Comparacion.c,57 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica7_Comparacion.c,58 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica7_Comparacion.c,60 :: 		Lcd_Out(1, 1, "Valor1:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Practica7_Comparacion+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica7_Comparacion.c,61 :: 		Lcd_Out(2, 1, "Valor2:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Practica7_Comparacion+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica7_Comparacion.c,64 :: 		mostrando=8;
	MOVLW      8
	MOVWF      _mostrando+0
	MOVLW      0
	MOVWF      _mostrando+1
;Practica7_Comparacion.c,65 :: 		for(i=0; i<6; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main18:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main95
	MOVLW      6
	SUBWF      _i+0, 0
L__main95:
	BTFSC      STATUS+0, 0
	GOTO       L_main19
;Practica7_Comparacion.c,67 :: 		kp = 0;
	CLRF       _kp+0
;Practica7_Comparacion.c,69 :: 		do{
L_main21:
;Practica7_Comparacion.c,70 :: 		kp = Keypad_Key_Click();
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;Practica7_Comparacion.c,72 :: 		}while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main21
;Practica7_Comparacion.c,73 :: 		mostrando++;
	INCF       _mostrando+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mostrando+1, 1
;Practica7_Comparacion.c,74 :: 		switch (kp) {
	GOTO       L_main24
;Practica7_Comparacion.c,77 :: 		case  1: kp = 49; break; // 1
L_main26:
	MOVLW      49
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,78 :: 		case  2: kp = 50; break; // 2
L_main27:
	MOVLW      50
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,79 :: 		case  3: kp = 51; break; // 3
L_main28:
	MOVLW      51
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,80 :: 		case  4: kp = 65; break; // A
L_main29:
	MOVLW      65
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,81 :: 		case  5: kp = 52; break; // 4
L_main30:
	MOVLW      52
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,82 :: 		case  6: kp = 53; break; // 5
L_main31:
	MOVLW      53
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,83 :: 		case  7: kp = 54; break; // 6
L_main32:
	MOVLW      54
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,84 :: 		case  8: kp = 66; break; // B
L_main33:
	MOVLW      66
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,85 :: 		case  9: kp = 55; break; // 7
L_main34:
	MOVLW      55
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,86 :: 		case 10: kp = 56; break; // 8
L_main35:
	MOVLW      56
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,87 :: 		case 11: kp = 57; break; // 9
L_main36:
	MOVLW      57
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,88 :: 		case 12: kp = 67; break; // C
L_main37:
	MOVLW      67
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,89 :: 		case 13: kp = 42; break; // *
L_main38:
	MOVLW      42
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,90 :: 		case 14: kp = 48; break; // 0
L_main39:
	MOVLW      48
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,91 :: 		case 15: kp = 35; break; // #
L_main40:
	MOVLW      35
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,92 :: 		case 16: kp = 68; break; // D
L_main41:
	MOVLW      68
	MOVWF      _kp+0
	GOTO       L_main25
;Practica7_Comparacion.c,94 :: 		}
L_main24:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main26
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main27
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_main28
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main29
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_main30
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_main31
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_main32
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_main33
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_main34
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_main35
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_main36
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_main37
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_main38
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_main39
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_main40
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_main41
L_main25:
;Practica7_Comparacion.c,95 :: 		Lcd_Chr(1, mostrando, kp);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _mostrando+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Practica7_Comparacion.c,96 :: 		Convertir(kp);
	MOVF       _kp+0, 0
	MOVWF      FARG_Convertir_kp+0
	CLRF       FARG_Convertir_kp+1
	CALL       _Convertir+0
;Practica7_Comparacion.c,97 :: 		valor1[i]=kp;
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _valor1+0
	MOVWF      FSR
	MOVF       _kp+0, 0
	MOVWF      INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
;Practica7_Comparacion.c,65 :: 		for(i=0; i<6; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Practica7_Comparacion.c,98 :: 		}/// Primer dato
	GOTO       L_main18
L_main19:
;Practica7_Comparacion.c,102 :: 		mostrando=8;
	MOVLW      8
	MOVWF      _mostrando+0
	MOVLW      0
	MOVWF      _mostrando+1
;Practica7_Comparacion.c,103 :: 		for(i=0; i<6; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main42:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main96
	MOVLW      6
	SUBWF      _i+0, 0
L__main96:
	BTFSC      STATUS+0, 0
	GOTO       L_main43
;Practica7_Comparacion.c,105 :: 		kp = 0;
	CLRF       _kp+0
;Practica7_Comparacion.c,107 :: 		do{
L_main45:
;Practica7_Comparacion.c,108 :: 		kp = Keypad_Key_Click();
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;Practica7_Comparacion.c,110 :: 		}while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main45
;Practica7_Comparacion.c,111 :: 		mostrando++;
	INCF       _mostrando+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mostrando+1, 1
;Practica7_Comparacion.c,112 :: 		switch (kp) {
	GOTO       L_main48
;Practica7_Comparacion.c,115 :: 		case  1: kp = 49; break; // 1
L_main50:
	MOVLW      49
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,116 :: 		case  2: kp = 50; break; // 2
L_main51:
	MOVLW      50
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,117 :: 		case  3: kp = 51; break; // 3
L_main52:
	MOVLW      51
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,118 :: 		case  4: kp = 65; break; // A
L_main53:
	MOVLW      65
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,119 :: 		case  5: kp = 52; break; // 4
L_main54:
	MOVLW      52
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,120 :: 		case  6: kp = 53; break; // 5
L_main55:
	MOVLW      53
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,121 :: 		case  7: kp = 54; break; // 6
L_main56:
	MOVLW      54
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,122 :: 		case  8: kp = 66; break; // B
L_main57:
	MOVLW      66
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,123 :: 		case  9: kp = 55; break; // 7
L_main58:
	MOVLW      55
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,124 :: 		case 10: kp = 56; break; // 8
L_main59:
	MOVLW      56
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,125 :: 		case 11: kp = 57; break; // 9
L_main60:
	MOVLW      57
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,126 :: 		case 12: kp = 67; break; // C
L_main61:
	MOVLW      67
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,127 :: 		case 13: kp = 42; break; // *
L_main62:
	MOVLW      42
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,128 :: 		case 14: kp = 48; break; // 0
L_main63:
	MOVLW      48
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,129 :: 		case 15: kp = 35; break; // #
L_main64:
	MOVLW      35
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,130 :: 		case 16: kp = 68; break; // D
L_main65:
	MOVLW      68
	MOVWF      _kp+0
	GOTO       L_main49
;Practica7_Comparacion.c,132 :: 		}
L_main48:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main50
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main51
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_main52
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main53
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_main54
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_main55
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_main56
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_main57
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_main58
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_main59
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_main60
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_main61
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_main62
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_main63
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_main64
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_main65
L_main49:
;Practica7_Comparacion.c,133 :: 		Lcd_Chr(2, mostrando, kp);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _mostrando+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Practica7_Comparacion.c,134 :: 		Convertir(kp);
	MOVF       _kp+0, 0
	MOVWF      FARG_Convertir_kp+0
	CLRF       FARG_Convertir_kp+1
	CALL       _Convertir+0
;Practica7_Comparacion.c,135 :: 		valor2[i]=kp;
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _valor2+0
	MOVWF      FSR
	MOVF       _kp+0, 0
	MOVWF      INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
;Practica7_Comparacion.c,103 :: 		for(i=0; i<6; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Practica7_Comparacion.c,137 :: 		}/// segundo dato
	GOTO       L_main42
L_main43:
;Practica7_Comparacion.c,139 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main66:
	DECFSZ     R13+0, 1
	GOTO       L_main66
	DECFSZ     R12+0, 1
	GOTO       L_main66
	DECFSZ     R11+0, 1
	GOTO       L_main66
	NOP
	NOP
;Practica7_Comparacion.c,140 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica7_Comparacion.c,141 :: 		bandera=0;
	CLRF       _bandera+0
	CLRF       _bandera+1
;Practica7_Comparacion.c,142 :: 		for (i = 0; i<6; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_main67:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main97
	MOVLW      6
	SUBWF      _i+0, 0
L__main97:
	BTFSC      STATUS+0, 0
	GOTO       L_main68
;Practica7_Comparacion.c,143 :: 		if (valor1[i] == valor2[i]) {
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _valor1+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R3+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R3+1
	MOVF       R0+0, 0
	ADDLW      _valor2+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVF       R3+1, 0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main98
	MOVF       R1+0, 0
	XORWF      R3+0, 0
L__main98:
	BTFSS      STATUS+0, 2
	GOTO       L_main70
;Practica7_Comparacion.c,144 :: 		if (i == 5) {
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main99
	MOVLW      5
	XORWF      _i+0, 0
L__main99:
	BTFSS      STATUS+0, 2
	GOTO       L_main71
;Practica7_Comparacion.c,145 :: 		bandera=2;
	MOVLW      2
	MOVWF      _bandera+0
	MOVLW      0
	MOVWF      _bandera+1
;Practica7_Comparacion.c,146 :: 		}
L_main71:
;Practica7_Comparacion.c,147 :: 		}
L_main70:
;Practica7_Comparacion.c,148 :: 		if (valor1[i] > valor2[i]) {
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _valor1+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R3+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R3+1
	MOVF       R0+0, 0
	ADDLW      _valor2+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main100
	MOVF       R3+0, 0
	SUBWF      R1+0, 0
L__main100:
	BTFSC      STATUS+0, 0
	GOTO       L_main72
;Practica7_Comparacion.c,149 :: 		bandera = 0;
	CLRF       _bandera+0
	CLRF       _bandera+1
;Practica7_Comparacion.c,150 :: 		}
L_main72:
;Practica7_Comparacion.c,151 :: 		if (valor1[i] < valor2[i]) {
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _valor1+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R3+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R3+1
	MOVF       R0+0, 0
	ADDLW      _valor2+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main101
	MOVF       R1+0, 0
	SUBWF      R3+0, 0
L__main101:
	BTFSC      STATUS+0, 0
	GOTO       L_main73
;Practica7_Comparacion.c,152 :: 		bandera = 1;
	MOVLW      1
	MOVWF      _bandera+0
	MOVLW      0
	MOVWF      _bandera+1
;Practica7_Comparacion.c,153 :: 		}
L_main73:
;Practica7_Comparacion.c,142 :: 		for (i = 0; i<6; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Practica7_Comparacion.c,155 :: 		}
	GOTO       L_main67
L_main68:
;Practica7_Comparacion.c,157 :: 		if (bandera == 0) {
	MOVLW      0
	XORWF      _bandera+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main102
	MOVLW      0
	XORWF      _bandera+0, 0
L__main102:
	BTFSS      STATUS+0, 2
	GOTO       L_main74
;Practica7_Comparacion.c,158 :: 		Lcd_Out(1, 1, "Valor1>Valor2");               //cout << "valor1 es mayor" << endl;
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Practica7_Comparacion+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica7_Comparacion.c,159 :: 		}
L_main74:
;Practica7_Comparacion.c,160 :: 		if(bandera == 1)
	MOVLW      0
	XORWF      _bandera+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main103
	MOVLW      1
	XORWF      _bandera+0, 0
L__main103:
	BTFSS      STATUS+0, 2
	GOTO       L_main75
;Practica7_Comparacion.c,161 :: 		Lcd_Out(1, 1, "Valor2>Valor1");                                    //cout << "valor2 es mayor" << endl;
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_Practica7_Comparacion+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main75:
;Practica7_Comparacion.c,162 :: 		if(bandera == 2){
	MOVLW      0
	XORWF      _bandera+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main104
	MOVLW      2
	XORWF      _bandera+0, 0
L__main104:
	BTFSS      STATUS+0, 2
	GOTO       L_main76
;Practica7_Comparacion.c,163 :: 		Lcd_Out(1, 1, "Valor1=Valor2");    //cout << "valor1 = valor2"<<endl;
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_Practica7_Comparacion+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica7_Comparacion.c,164 :: 		}
L_main76:
;Practica7_Comparacion.c,167 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
