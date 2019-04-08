
_main:

;Practica8_ADC.c,17 :: 		void main() {
;Practica8_ADC.c,18 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;Practica8_ADC.c,19 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica8_ADC.c,20 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica8_ADC.c,21 :: 		Adc_Init();
	CALL       _ADC_Init+0
;Practica8_ADC.c,22 :: 		ADCON1 = 0x80;
	MOVLW      128
	MOVWF      ADCON1+0
;Practica8_ADC.c,23 :: 		TRISA = 1; // entrada
	MOVLW      1
	MOVWF      TRISA+0
;Practica8_ADC.c,24 :: 		while(1){
L_main0:
;Practica8_ADC.c,25 :: 		valor = ((ADC_Read(1) * 18) / 1023);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVLW      18
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVLW      255
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      _valor+0
	MOVF       R0+1, 0
	MOVWF      _valor+1
;Practica8_ADC.c,26 :: 		IntToStr(valor,res);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _res+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;Practica8_ADC.c,27 :: 		LCD_Out(1, 1, "Voltaje:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Practica8_ADC+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica8_ADC.c,28 :: 		LCD_Out(1,10,res);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _res+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica8_ADC.c,29 :: 		LCD_Out(1, 14, "mV");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Practica8_ADC+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica8_ADC.c,31 :: 		}
	GOTO       L_main0
;Practica8_ADC.c,33 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
