
_main:

;essai.c,17 :: 		void main() {
;essai.c,19 :: 		Keypad_Init();                           // Initialize Keypad
	CALL       _Keypad_Init+0
;essai.c,20 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;essai.c,21 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;essai.c,22 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;essai.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
