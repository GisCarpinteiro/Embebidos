
_main:

;Practica1_Rotabit.c,7 :: 		void main() {
;Practica1_Rotabit.c,9 :: 		TRISB=0;    //Salida
	CLRF       TRISB+0
;Practica1_Rotabit.c,12 :: 		while (1) {
L_main0:
;Practica1_Rotabit.c,14 :: 		P1=1;
	MOVLW      1
	MOVWF      PORTB+0
;Practica1_Rotabit.c,15 :: 		delay_ms(retardo);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Practica1_Rotabit.c,18 :: 		exponencial=2;
	MOVLW      2
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;Practica1_Rotabit.c,19 :: 		for(i=0; i<7; i++){
	CLRF       R1+0
	CLRF       R1+1
L_main3:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVLW      7
	SUBWF      R1+0, 0
L__main8:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;Practica1_Rotabit.c,20 :: 		P1= exponencial;
	MOVF       R3+0, 0
	MOVWF      PORTB+0
;Practica1_Rotabit.c,21 :: 		delay_ms(retardo);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Practica1_Rotabit.c,22 :: 		exponencial=exponencial*2;
	RLF        R3+0, 1
	RLF        R3+1, 1
	BCF        R3+0, 0
;Practica1_Rotabit.c,19 :: 		for(i=0; i<7; i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;Practica1_Rotabit.c,25 :: 		}
	GOTO       L_main3
L_main4:
;Practica1_Rotabit.c,28 :: 		}
	GOTO       L_main0
;Practica1_Rotabit.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
