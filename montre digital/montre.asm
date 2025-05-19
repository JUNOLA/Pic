
_main:

;montre.c,17 :: 		void main()
;montre.c,19 :: 		s1=s2=m1=m2=h1=h2=48;
	MOVLW      48
	MOVWF      _h2+0
	MOVLW      48
	MOVWF      _h1+0
	MOVLW      48
	MOVWF      _m2+0
	MOVLW      48
	MOVWF      _m1+0
	MOVLW      48
	MOVWF      _s2+0
	MOVLW      48
	MOVWF      _s1+0
;montre.c,20 :: 		p=58;
	MOVLW      58
	MOVWF      _p+0
;montre.c,21 :: 		j=1;
	MOVLW      1
	MOVWF      _j+0
;montre.c,22 :: 		LCD_INIT();
	CALL       _Lcd_Init+0
;montre.c,23 :: 		LCD_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;montre.c,24 :: 		lcd_chr(1,8,s1);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _s1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,25 :: 		lcd_chr(1,7,s2);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _s2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,26 :: 		lcd_chr(1,6,p);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _p+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,27 :: 		lcd_chr(1,5,m1);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _m1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,28 :: 		lcd_chr(1,4,m2);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _m2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,29 :: 		lcd_chr(1,3,p);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _p+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,30 :: 		lcd_chr(1,2,h1);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _h1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,31 :: 		lcd_chr(1,1,h2);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _h2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,33 :: 		for(;;)
L_main0:
;montre.c,35 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;montre.c,36 :: 		s1++;
	INCF       _s1+0, 1
;montre.c,37 :: 		if(s1==58) {s1=48; s2++;}
	MOVF       _s1+0, 0
	XORLW      58
	BTFSS      STATUS+0, 2
	GOTO       L_main4
	MOVLW      48
	MOVWF      _s1+0
	INCF       _s2+0, 1
L_main4:
;montre.c,38 :: 		if(s2==54) {s1=48; s2=48; m1++;}
	MOVF       _s2+0, 0
	XORLW      54
	BTFSS      STATUS+0, 2
	GOTO       L_main5
	MOVLW      48
	MOVWF      _s1+0
	MOVLW      48
	MOVWF      _s2+0
	INCF       _m1+0, 1
L_main5:
;montre.c,39 :: 		if(m1==58) {s1=48; s2=48; m1=48; m2++;}
	MOVF       _m1+0, 0
	XORLW      58
	BTFSS      STATUS+0, 2
	GOTO       L_main6
	MOVLW      48
	MOVWF      _s1+0
	MOVLW      48
	MOVWF      _s2+0
	MOVLW      48
	MOVWF      _m1+0
	INCF       _m2+0, 1
L_main6:
;montre.c,40 :: 		if(m2==54) {s1=48; s2=48; m1=48; m2=48; h1++;}
	MOVF       _m2+0, 0
	XORLW      54
	BTFSS      STATUS+0, 2
	GOTO       L_main7
	MOVLW      48
	MOVWF      _s1+0
	MOVLW      48
	MOVWF      _s2+0
	MOVLW      48
	MOVWF      _m1+0
	MOVLW      48
	MOVWF      _m2+0
	INCF       _h1+0, 1
L_main7:
;montre.c,41 :: 		if(h1==58) {s1=48; s2=48; m1=48; m2=48; h1=48; h2++;}
	MOVF       _h1+0, 0
	XORLW      58
	BTFSS      STATUS+0, 2
	GOTO       L_main8
	MOVLW      48
	MOVWF      _s1+0
	MOVLW      48
	MOVWF      _s2+0
	MOVLW      48
	MOVWF      _m1+0
	MOVLW      48
	MOVWF      _m2+0
	MOVLW      48
	MOVWF      _h1+0
	INCF       _h2+0, 1
L_main8:
;montre.c,42 :: 		if(h2==50&&h1==52) {s1=48; s2=48; m1=48; m2=48; h1=48; h2=48; j++; }
	MOVF       _h2+0, 0
	XORLW      50
	BTFSS      STATUS+0, 2
	GOTO       L_main11
	MOVF       _h1+0, 0
	XORLW      52
	BTFSS      STATUS+0, 2
	GOTO       L_main11
L__main20:
	MOVLW      48
	MOVWF      _s1+0
	MOVLW      48
	MOVWF      _s2+0
	MOVLW      48
	MOVWF      _m1+0
	MOVLW      48
	MOVWF      _m2+0
	MOVLW      48
	MOVWF      _h1+0
	MOVLW      48
	MOVWF      _h2+0
	INCF       _j+0, 1
L_main11:
;montre.c,43 :: 		lcd_chr(1,8,s1);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _s1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,44 :: 		lcd_chr(1,7,s2);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _s2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,45 :: 		lcd_chr(1,5,m1);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _m1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,46 :: 		lcd_chr(1,4,m2);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _m2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,47 :: 		lcd_chr(1,2,h1);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _h1+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,48 :: 		lcd_chr(1,1,h2);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _h2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;montre.c,49 :: 		if(j==1) lcd_out(1,10,"LUN");
	MOVF       _j+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main12
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_montre+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main12:
;montre.c,50 :: 		if(j==2) lcd_out(1,10,"MAR");
	MOVF       _j+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main13
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_montre+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main13:
;montre.c,51 :: 		if(j==3) lcd_out(1,10,"MER");
	MOVF       _j+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main14
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_montre+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main14:
;montre.c,52 :: 		if(j==4) lcd_out(1,10,"JEU");
	MOVF       _j+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main15
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_montre+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main15:
;montre.c,53 :: 		if(j==5) lcd_out(1,10,"VEN");
	MOVF       _j+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main16
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_montre+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main16:
;montre.c,54 :: 		if(j==6) lcd_out(1,10,"SAM");
	MOVF       _j+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main17
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_montre+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main17:
;montre.c,55 :: 		if(j==7) lcd_out(1,10,"DIM");
	MOVF       _j+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main18
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_montre+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main18:
;montre.c,56 :: 		if(j==8) j=1;
	MOVF       _j+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L_main19
	MOVLW      1
	MOVWF      _j+0
L_main19:
;montre.c,61 :: 		}
	GOTO       L_main0
;montre.c,63 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
