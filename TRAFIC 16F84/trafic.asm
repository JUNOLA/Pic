
_main:

;trafic.c,1 :: 		void main()
;trafic.c,3 :: 		TRISB=0X00;
	CLRF       TRISB+0
;trafic.c,4 :: 		PORTB=0;
	CLRF       PORTB+0
;trafic.c,5 :: 		for(;;)
L_main0:
;trafic.c,7 :: 		PORTB=0b00100001;
	MOVLW      33
	MOVWF      PORTB+0
;trafic.c,8 :: 		delay_ms(5000);
	MOVLW      7
	MOVWF      R11+0
	MOVLW      88
	MOVWF      R12+0
	MOVLW      89
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;trafic.c,9 :: 		PORTB=0b00010001;
	MOVLW      17
	MOVWF      PORTB+0
;trafic.c,10 :: 		delay_ms(500);
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
;trafic.c,11 :: 		PORTB=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;trafic.c,12 :: 		delay_ms(500);
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
;trafic.c,13 :: 		PORTB=0b00010001;
	MOVLW      17
	MOVWF      PORTB+0
;trafic.c,14 :: 		delay_ms(500);
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
;trafic.c,15 :: 		PORTB=0b00001100;
	MOVLW      12
	MOVWF      PORTB+0
;trafic.c,16 :: 		delay_ms(5000);
	MOVLW      7
	MOVWF      R11+0
	MOVLW      88
	MOVWF      R12+0
	MOVLW      89
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;trafic.c,17 :: 		PORTB=0b00001000;
	MOVLW      8
	MOVWF      PORTB+0
;trafic.c,18 :: 		delay_ms(500);
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
;trafic.c,19 :: 		PORTB=0b00001010;
	MOVLW      10
	MOVWF      PORTB+0
;trafic.c,20 :: 		delay_ms(500);
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
;trafic.c,21 :: 		PORTB=0b00001000;
	MOVLW      8
	MOVWF      PORTB+0
;trafic.c,22 :: 		delay_ms(500);
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
;trafic.c,23 :: 		PORTB=0b00001010;
	MOVLW      10
	MOVWF      PORTB+0
;trafic.c,24 :: 		delay_ms(500);
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
;trafic.c,25 :: 		}
	GOTO       L_main0
;trafic.c,26 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
