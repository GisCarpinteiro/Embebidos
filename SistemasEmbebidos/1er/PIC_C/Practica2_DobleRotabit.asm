
_main:

;Practica2_DobleRotabit.c,7 :: 		void main() {
;Practica2_DobleRotabit.c,9 :: 		TRISB=0;    //Salida
	CLRF       TRISB+0
;Practica2_DobleRotabit.c,12 :: 		while (1) {
L_main0:
;Practica2_DobleRotabit.c,13 :: 		P1=1;
	MOVLW      1
	MOVWF      PORTB+0
;Practica2_DobleRotabit.c,14 :: 		delay_ms(retardo);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Practica2_DobleRotabit.c,15 :: 		exponencial=2;
	MOVLW      2
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;Practica2_DobleRotabit.c,16 :: 		for(i=0; i<7; i++){
	CLRF       R3+0
	CLRF       R3+1
L_main3:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      7
	SUBWF      R3+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;Practica2_DobleRotabit.c,17 :: 		P1= exponencial;
	MOVF       R5+0, 0
	MOVWF      PORTB+0
;Practica2_DobleRotabit.c,18 :: 		delay_ms(retardo);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Practica2_DobleRotabit.c,19 :: 		exponencial=exponencial*2;
	RLF        R5+0, 1
	RLF        R5+1, 1
	BCF        R5+0, 0
;Practica2_DobleRotabit.c,16 :: 		for(i=0; i<7; i++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;Practica2_DobleRotabit.c,20 :: 		}
	GOTO       L_main3
L_main4:
;Practica2_DobleRotabit.c,21 :: 		for(i=0; i<=6; i++){
	CLRF       R3+0
	CLRF       R3+1
L_main7:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R3+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVF       R3+0, 0
	SUBLW      6
L__main13:
	BTFSS      STATUS+0, 0
	GOTO       L_main8
;Practica2_DobleRotabit.c,22 :: 		exponencial=exponencial/2;
	MOVF       R5+0, 0
	MOVWF      R0+0
	MOVF       R5+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
	BTFSS      R0+1, 7
	GOTO       L__main14
	BTFSS      STATUS+0, 0
	GOTO       L__main14
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
L__main14:
	MOVF       R0+0, 0
	MOVWF      R5+0
	MOVF       R0+1, 0
	MOVWF      R5+1
;Practica2_DobleRotabit.c,23 :: 		P1=exponencial;
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Practica2_DobleRotabit.c,24 :: 		delay_ms(retardo);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;Practica2_DobleRotabit.c,21 :: 		for(i=0; i<=6; i++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;Practica2_DobleRotabit.c,25 :: 		}
	GOTO       L_main7
L_main8:
;Practica2_DobleRotabit.c,28 :: 		}
	GOTO       L_main0
;Practica2_DobleRotabit.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
