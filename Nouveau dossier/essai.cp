#line 1 "J:/projet pic/Nouveau dossier/essai.c"





int kp, kp1,kp2,kp3,kp4,sum;
char keypadPort at PORTC;
char txt[5],txt1[5],*txt2,txt3[5];
sbit LCD_RS at RD2_bit;
sbit LCD_EN at RD3_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;
sbit LCD_RS_Direction at TRISD2_bit;
sbit LCD_EN_Direction at TRISD3_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;

void main(){
int cnt=0,op1;
Keypad_Init();
ANSEL = 0;
ANSELH = 0;
while(1){
kp4 = 0;
do

kp4 = Keypad_Key_Click();
switch (kp4) {case 13: kp4 = 133; break;
if (kp4 == 133)
{
lcd_Init();
Lcd_Out(1, 1, “enter 1st no:”);
}
{
kp = 0;
do

kp = Keypad_Key_Click();
while (!kp);

switch (kp) {
case 1: kp = 55; break;
case 2: kp = 56; break;
case 3: kp = 57; break;
case 5: kp = 52; break;
case 6: kp = 53; break;
case 7: kp = 54; break;
case 9: kp = 49; break;
case 10: kp = 50; break;
case 11: kp = 51; break;
case 14: kp = 48; break;
Lcd_Cmd(_LCD_CLEAR);
Lcd_Cmd(_LCD_BLINK_CURSOR_ON);
kp= kp-48;
Lcd_Out(1, 1, “1st No”);
intToStr(kp, txt);
Lcd_Out(1, 10, txt);
Lcd_Out(2, 1, “(+,-,*,/)??”);
}
{
kp2 = 0;
do
kp2 = Keypad_Key_Click();
while (!kp2);

switch (kp2) {
case 4: kp2 = 47; break;
case 8: kp2 = 42; break;
case 12: kp2 = 45; break;
case 15: kp2 = 61; break;
case 16: kp2 = 43; break;
}
Lcd_Cmd(_LCD_CLEAR);
if (kp2 == 43) {
txt2= “+”;
}
if (kp2 == 45) {
txt2= “-“;
}
if (kp2 == 42) {
txt2= “*”;
}
if (kp2 == 47) {
txt2= “/”;
}
Lcd_Out(1, 1, txt);
Lcd_out(1, 7, txt2);
Lcd_Out(2, 1, “Enter 2nd no:”);
}
{kp1 = 0;
do
kp1 = Keypad_Key_Click();
while (!kp1);

switch (kp1) {
case 1: kp1 = 55; break;
case 2: kp1 = 56; break;
case 3: kp1 = 57; break;
case 5: kp1 = 52; break;
case 6: kp1 = 53; break;
case 7: kp1 = 54; break;
case 9: kp1 = 49; break;
case 10: kp1 = 50; break;
case 11: kp1 = 51; break;
case 14: kp1 = 48; break;
}
kp1= kp1-48;intToStr(kp1, txt1);
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1, 1, txt);
Lcd_out(1, 7, txt2);
Lcd_Out(1, 10, txt1);
Lcd_Out(2,1 , “Press = For Ans”);
}
{
kp3 = 0;
do



kp3 = Keypad_Key_Click();
while (!kp3);


switch (kp3) {

case 15: kp3 = 61; break;

}

if (kp3 == 61) {
if (kp2 == 43) {
sum=0;
sum = (kp)+(kp1);
intToStr(sum, txt3);

}

if (kp2 == 45) {
sum=0;
sum = (kp)-(kp1);
intToStr(sum, txt3);

}
if (kp2 == 42) {
sum=0;
sum = (kp)*(kp1);
intToStr(sum, txt3);
}
if (kp2 == 47) {
sum=0;
sum = (kp)/(kp1);
intToStr(sum, txt3);

}
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(2, 1, “Answer=”);
Lcd_Out(2, 10, txt3);
}
}

}
}
