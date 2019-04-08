
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Practica9_Interrupciones.c,22 :: 		void interrupt(){
;Practica9_Interrupciones.c,23 :: 		bandera=3;
	MOVLW      3
	MOVWF      _bandera+0
	MOVLW      0
	MOVWF      _bandera+1
;Practica9_Interrupciones.c,24 :: 		intf_bit=0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;Practica9_Interrupciones.c,25 :: 		}
L_end_interrupt:
L__interrupt13:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;Practica9_Interrupciones.c,27 :: 		void main() {
;Practica9_Interrupciones.c,28 :: 		GIE_BIT=1;
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
;Practica9_Interrupciones.c,29 :: 		INTE_BIT=1;
	BSF        INTE_bit+0, BitPos(INTE_bit+0)
;Practica9_Interrupciones.c,30 :: 		lcd_init();
	CALL       _Lcd_Init+0
;Practica9_Interrupciones.c,31 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica9_Interrupciones.c,32 :: 		do{
L_main0:
;Practica9_Interrupciones.c,33 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica9_Interrupciones.c,34 :: 		for(x=0;x<=7;x++){
	CLRF       _x+0
	CLRF       _x+1
L_main3:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _x+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVF       _x+0, 0
	SUBLW      7
L__main15:
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;Practica9_Interrupciones.c,35 :: 		aux[x]=reg[x];
	MOVF       _x+0, 0
	MOVWF      R0+0
	MOVF       _x+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _aux+0
	MOVWF      R2+0
	MOVF       R0+0, 0
	ADDLW      _reg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;Practica9_Interrupciones.c,36 :: 		lcd_CHR(1,x+1,reg[x]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       _x+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _x+0, 0
	MOVWF      R0+0
	MOVF       _x+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _reg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Practica9_Interrupciones.c,37 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Practica9_Interrupciones.c,38 :: 		if(bandera==3){
	MOVLW      0
	XORWF      _bandera+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVLW      3
	XORWF      _bandera+0, 0
L__main16:
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;Practica9_Interrupciones.c,39 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica9_Interrupciones.c,40 :: 		lcd_out(1,1, "Gisel");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Practica9_Interrupciones+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Practica9_Interrupciones.c,41 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;Practica9_Interrupciones.c,42 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica9_Interrupciones.c,43 :: 		for(i=0;i<=x;i++){
	CLRF       _i+0
	CLRF       _i+1
L_main9:
	MOVLW      128
	XORWF      _x+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVF       _i+0, 0
	SUBWF      _x+0, 0
L__main17:
	BTFSS      STATUS+0, 0
	GOTO       L_main10
;Practica9_Interrupciones.c,44 :: 		lcd_Chr(1,i+1,aux[i]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       _i+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _aux+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Practica9_Interrupciones.c,43 :: 		for(i=0;i<=x;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Practica9_Interrupciones.c,45 :: 		}
	GOTO       L_main9
L_main10:
;Practica9_Interrupciones.c,46 :: 		bandera=0;
	CLRF       _bandera+0
	CLRF       _bandera+1
;Practica9_Interrupciones.c,47 :: 		}
L_main7:
;Practica9_Interrupciones.c,34 :: 		for(x=0;x<=7;x++){
	INCF       _x+0, 1
	BTFSC      STATUS+0, 2
	INCF       _x+1, 1
;Practica9_Interrupciones.c,48 :: 		}
	GOTO       L_main3
L_main4:
;Practica9_Interrupciones.c,49 :: 		} while(1);
	GOTO       L_main0
;Practica9_Interrupciones.c,50 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
