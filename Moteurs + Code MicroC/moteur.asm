
_delay_ms:

;moteur.c,10 :: 		void delay_ms(int ms)
;moteur.c,13 :: 		for (i = 0; i < ms; i++)
	CLRF       R1+0
	CLRF       R1+1
L_delay_ms0:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_delay_ms_ms+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay_ms13
	MOVF       FARG_delay_ms_ms+0, 0
	SUBWF      R1+0, 0
L__delay_ms13:
	BTFSC      STATUS+0, 0
	GOTO       L_delay_ms1
;moteur.c,15 :: 		for (j = 0; j < 8000; j++)
	CLRF       R3+0
	CLRF       R3+1
L_delay_ms3:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      31
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay_ms14
	MOVLW      64
	SUBWF      R3+0, 0
L__delay_ms14:
	BTFSC      STATUS+0, 0
	GOTO       L_delay_ms4
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;moteur.c,17 :: 		}
	GOTO       L_delay_ms3
L_delay_ms4:
;moteur.c,13 :: 		for (i = 0; i < ms; i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;moteur.c,18 :: 		}
	GOTO       L_delay_ms0
L_delay_ms1:
;moteur.c,19 :: 		}
L_end_delay_ms:
	RETURN
; end of _delay_ms

_main:

;moteur.c,21 :: 		void main() {
;moteur.c,23 :: 		TRISD = 0b00000000;
	CLRF       TRISD+0
;moteur.c,25 :: 		PORTD = 0b00000000;
	CLRF       PORTD+0
;moteur.c,27 :: 		while (1) {
L_main6:
;moteur.c,29 :: 		OUT1 = 1;
	BSF        PORTD+0, 0
;moteur.c,30 :: 		OUT2 = 0;
	BCF        PORTD+0, 1
;moteur.c,31 :: 		OUT3 = 1;
	BSF        PORTD+0, 2
;moteur.c,32 :: 		OUT4 = 0;
	BCF        PORTD+0, 3
;moteur.c,33 :: 		ENA = 1;
	BSF        PORTD+0, 4
;moteur.c,34 :: 		ENB = 1;
	BSF        PORTD+0, 5
;moteur.c,36 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
;moteur.c,39 :: 		OUT1 = 0;
	BCF        PORTD+0, 0
;moteur.c,40 :: 		OUT2 = 0;
	BCF        PORTD+0, 1
;moteur.c,41 :: 		OUT3 = 0;
	BCF        PORTD+0, 2
;moteur.c,42 :: 		OUT4 = 0;
	BCF        PORTD+0, 3
;moteur.c,43 :: 		ENA = 0;
	BCF        PORTD+0, 4
;moteur.c,44 :: 		ENB = 0;
	BCF        PORTD+0, 5
;moteur.c,45 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;moteur.c,48 :: 		OUT1 = 0;
	BCF        PORTD+0, 0
;moteur.c,49 :: 		OUT2 = 1;
	BSF        PORTD+0, 1
;moteur.c,50 :: 		OUT3 = 0;
	BCF        PORTD+0, 2
;moteur.c,51 :: 		OUT4 = 1;
	BSF        PORTD+0, 3
;moteur.c,52 :: 		ENA = 1;
	BSF        PORTD+0, 4
;moteur.c,53 :: 		ENB = 1;
	BSF        PORTD+0, 5
;moteur.c,55 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
;moteur.c,58 :: 		OUT1 = 0;
	BCF        PORTD+0, 0
;moteur.c,59 :: 		OUT2 = 0;
	BCF        PORTD+0, 1
;moteur.c,60 :: 		OUT3 = 0;
	BCF        PORTD+0, 2
;moteur.c,61 :: 		OUT4 = 0;
	BCF        PORTD+0, 3
;moteur.c,62 :: 		ENA = 0;
	BCF        PORTD+0, 4
;moteur.c,63 :: 		ENB = 0;
	BCF        PORTD+0, 5
;moteur.c,64 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;moteur.c,65 :: 		}
	GOTO       L_main6
;moteur.c,66 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
