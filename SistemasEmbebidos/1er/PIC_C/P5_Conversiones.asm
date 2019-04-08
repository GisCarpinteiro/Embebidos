
_Convertir:

;P5_Conversiones.c,27 :: 		void Convertir(int kp){
;P5_Conversiones.c,28 :: 		switch (kp) {
	GOTO       L_Convertir0
;P5_Conversiones.c,30 :: 		case  49: kp = 1; break; // 1        // Uncomment this block for keypad4x4
L_Convertir2:
	MOVLW      1
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,31 :: 		case  50: kp = 2; break; // 2
L_Convertir3:
	MOVLW      2
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,32 :: 		case  51: kp = 3; break; // 3
L_Convertir4:
	MOVLW      3
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,33 :: 		case  65: kp = 10; break; // A
L_Convertir5:
	MOVLW      10
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,34 :: 		case  52: kp = 4; break; // 4
L_Convertir6:
	MOVLW      4
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,35 :: 		case  53: kp = 5; break; // 5
L_Convertir7:
	MOVLW      5
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,36 :: 		case  54: kp = 6; break; // 6
L_Convertir8:
	MOVLW      6
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,37 :: 		case  66: kp = 11; break; // B
L_Convertir9:
	MOVLW      11
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,38 :: 		case  55: kp = 7; break; // 7
L_Convertir10:
	MOVLW      7
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,39 :: 		case 56: kp = 8; break; // 8
L_Convertir11:
	MOVLW      8
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,40 :: 		case 57: kp = 9; break; // 9
L_Convertir12:
	MOVLW      9
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,41 :: 		case 67: kp = 12; break; // C
L_Convertir13:
	MOVLW      12
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,42 :: 		case 42: kp = 33; break; // *
L_Convertir14:
	MOVLW      33
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,43 :: 		case 48: kp = 0; break; // 0
L_Convertir15:
	CLRF       FARG_Convertir_kp+0
	CLRF       FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,44 :: 		case 35: kp = 34; break; // #
L_Convertir16:
	MOVLW      34
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,45 :: 		case 68: kp = 13; break; // D
L_Convertir17:
	MOVLW      13
	MOVWF      FARG_Convertir_kp+0
	MOVLW      0
	MOVWF      FARG_Convertir_kp+1
	GOTO       L_Convertir1
;P5_Conversiones.c,47 :: 		}
L_Convertir0:
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir61
	MOVLW      49
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir61:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir2
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir62
	MOVLW      50
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir62:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir3
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir63
	MOVLW      51
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir63:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir4
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir64
	MOVLW      65
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir64:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir5
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir65
	MOVLW      52
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir65:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir6
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir66
	MOVLW      53
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir66:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir7
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir67
	MOVLW      54
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir67:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir8
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir68
	MOVLW      66
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir68:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir9
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir69
	MOVLW      55
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir69:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir10
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir70
	MOVLW      56
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir70:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir11
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir71
	MOVLW      57
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir71:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir12
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir72
	MOVLW      67
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir72:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir13
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir73
	MOVLW      42
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir73:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir14
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir74
	MOVLW      48
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir74:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir15
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir75
	MOVLW      35
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir75:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir16
	MOVLW      0
	XORWF      FARG_Convertir_kp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Convertir76
	MOVLW      68
	XORWF      FARG_Convertir_kp+0, 0
L__Convertir76:
	BTFSC      STATUS+0, 2
	GOTO       L_Convertir17
L_Convertir1:
;P5_Conversiones.c,49 :: 		}
L_end_Convertir:
	RETURN
; end of _Convertir

_main:

;P5_Conversiones.c,50 :: 		void main() {
;P5_Conversiones.c,52 :: 		cnt = 0;                                 // Reset counter
	CLRF       _cnt+0
;P5_Conversiones.c,53 :: 		Keypad_Init();                           // Initialize Keypad
	CALL       _Keypad_Init+0
;P5_Conversiones.c,54 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;P5_Conversiones.c,55 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;P5_Conversiones.c,56 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;P5_Conversiones.c,58 :: 		mostrando=1;
	MOVLW      1
	MOVWF      _mostrando+0
	MOVLW      0
	MOVWF      _mostrando+1
;P5_Conversiones.c,59 :: 		for(i=0; i<4; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main18:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main78
	MOVLW      4
	SUBWF      _i+0, 0
L__main78:
	BTFSC      STATUS+0, 0
	GOTO       L_main19
;P5_Conversiones.c,61 :: 		kp = 0;
	CLRF       _kp+0
;P5_Conversiones.c,63 :: 		do{
L_main21:
;P5_Conversiones.c,64 :: 		kp = Keypad_Key_Click();
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;P5_Conversiones.c,66 :: 		}while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main21
;P5_Conversiones.c,68 :: 		switch (kp) {
	GOTO       L_main24
;P5_Conversiones.c,71 :: 		case  1: kp = 49; break; // 1
L_main26:
	MOVLW      49
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,72 :: 		case  2: kp = 50; break; // 2
L_main27:
	MOVLW      50
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,73 :: 		case  3: kp = 51; break; // 3
L_main28:
	MOVLW      51
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,74 :: 		case  4: kp = 65; break; // A
L_main29:
	MOVLW      65
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,75 :: 		case  5: kp = 52; break; // 4
L_main30:
	MOVLW      52
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,76 :: 		case  6: kp = 53; break; // 5
L_main31:
	MOVLW      53
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,77 :: 		case  7: kp = 54; break; // 6
L_main32:
	MOVLW      54
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,78 :: 		case  8: kp = 66; break; // B
L_main33:
	MOVLW      66
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,79 :: 		case  9: kp = 55; break; // 7
L_main34:
	MOVLW      55
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,80 :: 		case 10: kp = 56; break; // 8
L_main35:
	MOVLW      56
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,81 :: 		case 11: kp = 57; break; // 9
L_main36:
	MOVLW      57
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,82 :: 		case 12: kp = 67; break; // C
L_main37:
	MOVLW      67
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,83 :: 		case 13: kp = 42; break; // *
L_main38:
	MOVLW      42
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,84 :: 		case 14: kp = 48; break; // 0
L_main39:
	MOVLW      48
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,85 :: 		case 15: kp = 35; break; // #
L_main40:
	MOVLW      35
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,86 :: 		case 16: kp = 68; break; // D
L_main41:
	MOVLW      68
	MOVWF      _kp+0
	GOTO       L_main25
;P5_Conversiones.c,88 :: 		}
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
;P5_Conversiones.c,89 :: 		Lcd_Chr(1, mostrando, kp);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _mostrando+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;P5_Conversiones.c,90 :: 		mostrando++;
	INCF       _mostrando+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mostrando+1, 1
;P5_Conversiones.c,91 :: 		switch (kp) {
	GOTO       L_main42
;P5_Conversiones.c,93 :: 		case  49: kp = 1; break; // 1        // Uncomment this block for keypad4x4
L_main44:
	MOVLW      1
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,94 :: 		case  50: kp = 2; break; // 2
L_main45:
	MOVLW      2
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,95 :: 		case  51: kp = 3; break; // 3
L_main46:
	MOVLW      3
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,96 :: 		case  65: kp = 10; break; // A
L_main47:
	MOVLW      10
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,97 :: 		case  52: kp = 4; break; // 4
L_main48:
	MOVLW      4
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,98 :: 		case  53: kp = 5; break; // 5
L_main49:
	MOVLW      5
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,99 :: 		case  54: kp = 6; break; // 6
L_main50:
	MOVLW      6
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,100 :: 		case  66: kp = 11; break; // B
L_main51:
	MOVLW      11
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,101 :: 		case  55: kp = 7; break; // 7
L_main52:
	MOVLW      7
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,102 :: 		case 56: kp = 8; break; // 8
L_main53:
	MOVLW      8
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,103 :: 		case 57: kp = 9; break; // 9
L_main54:
	MOVLW      9
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,104 :: 		case 67: kp = 12; break; // C
L_main55:
	MOVLW      12
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,105 :: 		case 42: kp = 33; break; // *
L_main56:
	MOVLW      33
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,106 :: 		case 48: kp = 0; break; // 0
L_main57:
	CLRF       _kp+0
	GOTO       L_main43
;P5_Conversiones.c,107 :: 		case 35: kp = 34; break; // #
L_main58:
	MOVLW      34
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,108 :: 		case 68: kp = 13; break; // D
L_main59:
	MOVLW      13
	MOVWF      _kp+0
	GOTO       L_main43
;P5_Conversiones.c,110 :: 		}
L_main42:
	MOVF       _kp+0, 0
	XORLW      49
	BTFSC      STATUS+0, 2
	GOTO       L_main44
	MOVF       _kp+0, 0
	XORLW      50
	BTFSC      STATUS+0, 2
	GOTO       L_main45
	MOVF       _kp+0, 0
	XORLW      51
	BTFSC      STATUS+0, 2
	GOTO       L_main46
	MOVF       _kp+0, 0
	XORLW      65
	BTFSC      STATUS+0, 2
	GOTO       L_main47
	MOVF       _kp+0, 0
	XORLW      52
	BTFSC      STATUS+0, 2
	GOTO       L_main48
	MOVF       _kp+0, 0
	XORLW      53
	BTFSC      STATUS+0, 2
	GOTO       L_main49
	MOVF       _kp+0, 0
	XORLW      54
	BTFSC      STATUS+0, 2
	GOTO       L_main50
	MOVF       _kp+0, 0
	XORLW      66
	BTFSC      STATUS+0, 2
	GOTO       L_main51
	MOVF       _kp+0, 0
	XORLW      55
	BTFSC      STATUS+0, 2
	GOTO       L_main52
	MOVF       _kp+0, 0
	XORLW      56
	BTFSC      STATUS+0, 2
	GOTO       L_main53
	MOVF       _kp+0, 0
	XORLW      57
	BTFSC      STATUS+0, 2
	GOTO       L_main54
	MOVF       _kp+0, 0
	XORLW      67
	BTFSC      STATUS+0, 2
	GOTO       L_main55
	MOVF       _kp+0, 0
	XORLW      42
	BTFSC      STATUS+0, 2
	GOTO       L_main56
	MOVF       _kp+0, 0
	XORLW      48
	BTFSC      STATUS+0, 2
	GOTO       L_main57
	MOVF       _kp+0, 0
	XORLW      35
	BTFSC      STATUS+0, 2
	GOTO       L_main58
	MOVF       _kp+0, 0
	XORLW      68
	BTFSC      STATUS+0, 2
	GOTO       L_main59
L_main43:
;P5_Conversiones.c,112 :: 		valor[i]=kp;
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
	MOVF       _kp+0, 0
	MOVWF      INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
;P5_Conversiones.c,59 :: 		for(i=0; i<4; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;P5_Conversiones.c,113 :: 		}/// Primer dato
	GOTO       L_main18
L_main19:
;P5_Conversiones.c,115 :: 		v=1;
	MOVLW      1
	MOVWF      _v+0
	MOVLW      0
	MOVWF      _v+1
;P5_Conversiones.c,116 :: 		res=0;
	CLRF       _res+0
	CLRF       _res+1
;P5_Conversiones.c,117 :: 		i=3;
	MOVLW      3
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;P5_Conversiones.c,118 :: 		res1= (valor[3]*1);
	MOVF       _valor+6, 0
	MOVWF      _res1+0
	MOVF       _valor+7, 0
	MOVWF      _res1+1
;P5_Conversiones.c,119 :: 		res2= (valor[2]*16);
	MOVLW      4
	MOVWF      R0+0
	MOVF       _valor+4, 0
	MOVWF      R6+0
	MOVF       _valor+5, 0
	MOVWF      R6+1
	MOVF       R0+0, 0
L__main79:
	BTFSC      STATUS+0, 2
	GOTO       L__main80
	RLF        R6+0, 1
	RLF        R6+1, 1
	BCF        R6+0, 0
	ADDLW      255
	GOTO       L__main79
L__main80:
	MOVF       R6+0, 0
	MOVWF      _res2+0
	MOVF       R6+1, 0
	MOVWF      _res2+1
;P5_Conversiones.c,120 :: 		res3= (valor[1]*256);
	MOVF       _valor+2, 0
	MOVWF      R4+1
	CLRF       R4+0
	MOVF       R4+0, 0
	MOVWF      _res3+0
	MOVF       R4+1, 0
	MOVWF      _res3+1
;P5_Conversiones.c,121 :: 		res4= (valor[0]*4096);
	MOVLW      12
	MOVWF      R0+0
	MOVF       _valor+0, 0
	MOVWF      R2+0
	MOVF       _valor+1, 0
	MOVWF      R2+1
	MOVF       R0+0, 0
L__main81:
	BTFSC      STATUS+0, 2
	GOTO       L__main82
	RLF        R2+0, 1
	RLF        R2+1, 1
	BCF        R2+0, 0
	ADDLW      255
	GOTO       L__main81
L__main82:
	MOVF       R2+0, 0
	MOVWF      _res4+0
	MOVF       R2+1, 0
	MOVWF      _res4+1
;P5_Conversiones.c,122 :: 		res= res1+res2+res3+res4;
	MOVF       R6+0, 0
	ADDWF      _valor+6, 0
	MOVWF      R0+0
	MOVF       _valor+7, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R6+1, 0
	MOVWF      R0+1
	MOVF       R4+0, 0
	ADDWF      R0+0, 1
	MOVF       R4+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R2+0, 0
	ADDWF      R0+0, 1
	MOVF       R2+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      _res+0
	MOVF       R0+1, 0
	MOVWF      _res+1
;P5_Conversiones.c,124 :: 		WordToStr(res, txt);
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;P5_Conversiones.c,125 :: 		Lcd_Out(2, 1, txt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;P5_Conversiones.c,126 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
