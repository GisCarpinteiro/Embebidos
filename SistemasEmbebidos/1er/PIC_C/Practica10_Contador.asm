
_main:

;Practica10_Contador.c,20 :: 		void main() {
;Practica10_Contador.c,23 :: 		LCD_Init();
	CALL       _Lcd_Init+0
;Practica10_Contador.c,24 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica10_Contador.c,26 :: 		PORTA = 0;               // Reiniciar el puerto PORTA
	CLRF       PORTA+0
;Practica10_Contador.c,27 :: 		TRISA = 1;            // Puerto A entrada
	MOVLW      1
	MOVWF      TRISA+0
;Practica10_Contador.c,33 :: 		OPTION_REG.F5 = 1;       // Contador TMR0 recibe los pulsos por el pin RA4
	BSF        OPTION_REG+0, 5
;Practica10_Contador.c,34 :: 		OPTION_REG.F3 = 1;       // Valor del pre-escalador 1:1
	BSF        OPTION_REG+0, 3
;Practica10_Contador.c,36 :: 		TMR0 = 0;                // Reiniciar el temporizador/contador TMR0
	CLRF       TMR0+0
;Practica10_Contador.c,38 :: 		while(1){
L_main0:
;Practica10_Contador.c,41 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Practica10_Contador.c,42 :: 		personas = TMR0;
	MOVF       TMR0+0, 0
	MOVWF      _personas+0
	CLRF       _personas+1
;Practica10_Contador.c,43 :: 		sprintl(npersonas,"%u",personas);
	MOVLW      _npersonas+0
	MOVWF      FARG_sprintl_wh+0
	MOVLW      ?lstr_1_Practica10_Contador+0
	MOVWF      FARG_sprintl_f+0
	MOVLW      hi_addr(?lstr_1_Practica10_Contador+0)
	MOVWF      FARG_sprintl_f+1
	MOVF       _personas+0, 0
	MOVWF      FARG_sprintl_wh+3
	MOVF       _personas+1, 0
	MOVWF      FARG_sprintl_wh+4
	CALL       _sprintl+0
;Practica10_Contador.c,45 :: 		if (TMR0 == 22){
	MOVF       TMR0+0, 0
	XORLW      22
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;Practica10_Contador.c,46 :: 		LCD_CMD(_LCD_Clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica10_Contador.c,47 :: 		LCD_out(1,1,"Numero Máximo");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Practica10_Contador+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica10_Contador.c,48 :: 		break;
	GOTO       L_main1
;Practica10_Contador.c,49 :: 		}
L_main3:
;Practica10_Contador.c,52 :: 		LCD_Out(1,1,"Personas: ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Practica10_Contador+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica10_Contador.c,53 :: 		LCD_Out(1,12,npersonas);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _npersonas+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica10_Contador.c,55 :: 		}
	GOTO       L_main0
L_main1:
;Practica10_Contador.c,57 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
