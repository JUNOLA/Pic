#line 1 "J:/projet pic/montre digital/montre.c"
 sbit LCD_RS at RB1_bit;
 sbit LCD_EN at RB2_bit;
 sbit LCD_D4 at RB3_bit;
 sbit LCD_D5 at RB4_bit;
 sbit LCD_D6 at RB5_bit;
 sbit LCD_D7 at RB6_bit;

 sbit LCD_RS_Direction at TRISB1_bit;
 sbit LCD_EN_Direction at TRISB2_bit;
 sbit LCD_D4_Direction at TRISB3_bit;
 sbit LCD_D5_Direction at TRISB4_bit;
 sbit LCD_D6_Direction at TRISB5_bit;
 sbit LCD_D7_Direction at TRISB6_bit;

 char s1,s2,p,m1,m2,h1,h2,j;

void main()
{
 s1=s2=m1=m2=h1=h2=48;
 p=58;
 j=1;
 LCD_INIT();
 LCD_cmd(_lcd_cursor_off);
 lcd_chr(1,8,s1);
 lcd_chr(1,7,s2);
 lcd_chr(1,6,p);
 lcd_chr(1,5,m1);
 lcd_chr(1,4,m2);
 lcd_chr(1,3,p);
 lcd_chr(1,2,h1);
 lcd_chr(1,1,h2);

 for(;;)
 {
 delay_ms(100);
 s1++;
 if(s1==58) {s1=48; s2++;}
 if(s2==54) {s1=48; s2=48; m1++;}
 if(m1==58) {s1=48; s2=48; m1=48; m2++;}
 if(m2==54) {s1=48; s2=48; m1=48; m2=48; h1++;}
 if(h1==58) {s1=48; s2=48; m1=48; m2=48; h1=48; h2++;}
 if(h2==50&&h1==52) {s1=48; s2=48; m1=48; m2=48; h1=48; h2=48; j++; }
 lcd_chr(1,8,s1);
 lcd_chr(1,7,s2);
 lcd_chr(1,5,m1);
 lcd_chr(1,4,m2);
 lcd_chr(1,2,h1);
 lcd_chr(1,1,h2);
 if(j==1) lcd_out(1,10,"LUN");
 if(j==2) lcd_out(1,10,"MAR");
 if(j==3) lcd_out(1,10,"MER");
 if(j==4) lcd_out(1,10,"JEU");
 if(j==5) lcd_out(1,10,"VEN");
 if(j==6) lcd_out(1,10,"SAM");
 if(j==7) lcd_out(1,10,"DIM");
 if(j==8) j=1;




 }

}
