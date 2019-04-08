
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Practica11_Reloj.c,18 :: 		void interrupt(){
;Practica11_Reloj.c,19 :: 		if(PIR1.TMR1IF ==1){
	BTFSS      PIR1+0, 0
	GOTO       L_interrupt0
;Practica11_Reloj.c,20 :: 		if(cnt>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _cnt+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt4
	MOVF       _cnt+0, 0
	SUBLW      0
L__interrupt4:
	BTFSC      STATUS+0, 0
	GOTO       L_interrupt1
;Practica11_Reloj.c,21 :: 		T1CON = 0; //APAGAR TIMER
	CLRF       T1CON+0
;Practica11_Reloj.c,22 :: 		TMR1H = 0x3C;
	MOVLW      60
	MOVWF      TMR1H+0
;Practica11_Reloj.c,23 :: 		TMR1L = 0xAF;
	MOVLW      175
	MOVWF      TMR1L+0
;Practica11_Reloj.c,24 :: 		cnt--;
	MOVLW      1
	SUBWF      _cnt+0, 1
	BTFSS      STATUS+0, 0
	DECF       _cnt+1, 1
;Practica11_Reloj.c,25 :: 		t1con = 1;
	MOVLW      1
	MOVWF      T1CON+0
;Practica11_Reloj.c,26 :: 		}
L_interrupt1:
;Practica11_Reloj.c,27 :: 		}  //BANDERA PREGUNTA SI ESTA HABILITADA (SI SE DESBORDA)
L_interrupt0:
;Practica11_Reloj.c,28 :: 		PIR1.TMR1IF=0;
	BCF        PIR1+0, 0
;Practica11_Reloj.c,29 :: 		}
L_end_interrupt:
L__interrupt3:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;Practica11_Reloj.c,31 :: 		void main() {
;Practica11_Reloj.c,33 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;Practica11_Reloj.c,34 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica11_Reloj.c,35 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Practica11_Reloj.c,36 :: 		T1CON= 0b00111000;   //CONFIGURAR TIMER  INTCON= 0xB0                    //ACTIVAR INTERRUPCIONES
	MOVLW      56
	MOVWF      T1CON+0
;Practica11_Reloj.c,37 :: 		TMR1L= 0xAF;   //15,535
	MOVLW      175
	MOVWF      TMR1L+0
;Practica11_Reloj.c,38 :: 		TMR1H= 0x3C;
	MOVLW      60
	MOVWF      TMR1H+0
;Practica11_Reloj.c,39 :: 		T1CON = 1;                                     //PONE A CONTAR EL TIMER
	MOVLW      1
	MOVWF      T1CON+0
;Practica11_Reloj.c,40 :: 		PIE1.TMR1IE = 1; //ACTIVA BANDERA DESBORDAMIENTO
	BSF        PIE1+0, 0
;Practica11_Reloj.c,42 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
