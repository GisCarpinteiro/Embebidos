
_main:

;Practica3_Teclado.c,20 :: 		void main() {
;Practica3_Teclado.c,22 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Practica3_Teclado.c,23 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica3_Teclado.c,24 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica3_Teclado.c,25 :: 		Lcd_Out(1,2,Nombre);                 // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _Nombre+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica3_Teclado.c,26 :: 		Lcd_Out(2,2,Apellido);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _Apellido+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica3_Teclado.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
