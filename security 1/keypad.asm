
_get_password:

;keypad.c,20 :: 		char get_password()
;keypad.c,22 :: 		Loop:
___get_password_Loop:
;keypad.c,23 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad.c,24 :: 		Lcd_Out(1, 1, "Enter Password :");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_keypad+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad.c,27 :: 		for(i=0;i<3;i++)
	CLRF       _i+0
	CLRF       _i+1
L_get_password0:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password21
	MOVLW      3
	SUBWF      _i+0, 0
L__get_password21:
	BTFSC      STATUS+0, 0
	GOTO       L_get_password1
;keypad.c,29 :: 		while (password[i] == 0)
L_get_password3:
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_get_password4
;keypad.c,31 :: 		password[i] = Keypad_Key_Click();
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FLOC__get_password+0
	CALL       _Keypad_Key_Click+0
	MOVF       FLOC__get_password+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;keypad.c,32 :: 		}
	GOTO       L_get_password3
L_get_password4:
;keypad.c,34 :: 		if(password[i]==1)     password[i]  = '7';
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_get_password5
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      55
	MOVWF      INDF+0
L_get_password5:
;keypad.c,35 :: 		if(password[i]==2)     password[i]  = '8';
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_get_password6
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      56
	MOVWF      INDF+0
L_get_password6:
;keypad.c,36 :: 		if(password[i]==3)     password[i]  = '9';
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_get_password7
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      57
	MOVWF      INDF+0
L_get_password7:
;keypad.c,37 :: 		if(password[i]==5)     password[i]  = '4';
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_get_password8
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      52
	MOVWF      INDF+0
L_get_password8:
;keypad.c,38 :: 		if(password[i]==6)     password[i]  = '5';
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_get_password9
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      53
	MOVWF      INDF+0
L_get_password9:
;keypad.c,39 :: 		if(password[i]==7)     password[i]  = '6';
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_get_password10
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      54
	MOVWF      INDF+0
L_get_password10:
;keypad.c,40 :: 		if(password[i]==9)     password[i]  = '1';
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      9
	BTFSS      STATUS+0, 2
	GOTO       L_get_password11
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      49
	MOVWF      INDF+0
L_get_password11:
;keypad.c,41 :: 		if(password[i]==10)    password[i]  = '2';
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_get_password12
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      50
	MOVWF      INDF+0
L_get_password12:
;keypad.c,42 :: 		if(password[i]==11)    password[i]  = '3';
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      11
	BTFSS      STATUS+0, 2
	GOTO       L_get_password13
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      51
	MOVWF      INDF+0
L_get_password13:
;keypad.c,43 :: 		Lcd_Chr(2, i+1, password[i]);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       _i+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;keypad.c,27 :: 		for(i=0;i<3;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;keypad.c,44 :: 		}
	GOTO       L_get_password0
L_get_password1:
;keypad.c,45 :: 		if(strcmp(password,"123") == 0) {return 1;}
	MOVLW      _password+0
	MOVWF      FARG_strcmp_s1+0
	MOVLW      ?lstr2_keypad+0
	MOVWF      FARG_strcmp_s2+0
	CALL       _strcmp+0
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password22
	MOVLW      0
	XORWF      R0+0, 0
L__get_password22:
	BTFSS      STATUS+0, 2
	GOTO       L_get_password14
	MOVLW      1
	MOVWF      R0+0
	GOTO       L_end_get_password
L_get_password14:
;keypad.c,48 :: 		password[0] = 0;
	CLRF       _password+0
;keypad.c,49 :: 		password[1] = 0;
	CLRF       _password+1
;keypad.c,50 :: 		password[2] = 0;
	CLRF       _password+2
;keypad.c,51 :: 		password[3] = 0;
	CLRF       _password+3
;keypad.c,52 :: 		goto loop ;
	GOTO       ___get_password_Loop
;keypad.c,55 :: 		}
L_end_get_password:
	RETURN
; end of _get_password

_main:

;keypad.c,57 :: 		void main()
;keypad.c,59 :: 		trisc.b0=0;    portc.b0=0;
	BCF        TRISC+0, 0
	BCF        PORTC+0, 0
;keypad.c,60 :: 		Lcd_Init();    keypad_Init();
	CALL       _Lcd_Init+0
	CALL       _Keypad_Init+0
;keypad.c,61 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad.c,63 :: 		get_password();
	CALL       _get_password+0
;keypad.c,64 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad.c,65 :: 		Lcd_Out(1,2 , "OPEN THE DOOR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_keypad+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad.c,66 :: 		while(1)
L_main16:
;keypad.c,69 :: 		portc.b0 = 0 ;
	BCF        PORTC+0, 0
;keypad.c,70 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;keypad.c,71 :: 		portc.b0 = 1;
	BSF        PORTC+0, 0
;keypad.c,72 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
	NOP
;keypad.c,73 :: 		}
	GOTO       L_main16
;keypad.c,74 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
