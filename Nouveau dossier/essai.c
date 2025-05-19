// Name : project on making calculator using PIC16F877 and Mikcro C Pro.
// Purpose : Main file for using LCD with PIC16F877 in 4bit mode.
// Author : Subham Dutta
// Date : 15-09-13
// Website : www.nbcafe.in
int kp, kp1,kp2,kp3,kp4,sum; //Declare variable
char keypadPort at PORTC; // incialized Keypad on port C
char txt[5],txt1[5],*txt2,txt3[5];
sbit LCD_RS at RD2_bit; //Start LCD module connections
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
// End LCD module connections
void main(){
int cnt=0,op1;
Keypad_Init(); // Initialize Keypad
ANSEL = 0; // Configure AN pins as digital I/O
ANSELH = 0;
while(1){
kp4 = 0; // Reset key code variable
do
// Wait for key to be pressed and released
kp4 = Keypad_Key_Click(); // Store key code in kp4 variablewhile (!kp4);// prepare value for output, transform key to it’s ASCII value
switch (kp4) {case 13: kp4 = 133; break; // —}
if (kp4 == 133)
{
lcd_Init(); // LCD Initialize
Lcd_Out(1, 1, “enter 1st no:”); // Display to lcd
}
{
kp = 0; // Reset key code variable
do
// Wait for key to be pressed and released
kp = Keypad_Key_Click(); // Store key code in kp variable
while (!kp);
// Prepare value for output, transform key to it’s ASCII value
switch (kp) {
case 1: kp = 55; break; // 7
case 2: kp = 56; break; // 8
case 3: kp = 57; break; // 9
case 5: kp = 52; break; // 4
case 6: kp = 53; break; // 5
case 7: kp = 54; break; // 6
case 9: kp = 49; break; // 1
case 10: kp = 50; break; // 2
case 11: kp = 51; break; // 3
case 14: kp = 48; break; // 0}
Lcd_Cmd(_LCD_CLEAR); // Clear display
Lcd_Cmd(_LCD_BLINK_CURSOR_ON); // Cursor on
kp= kp-48;
Lcd_Out(1, 1, “1st No”); // Write message text on LCD
intToStr(kp, txt); // Transform counter value to string
Lcd_Out(1, 10, txt);
Lcd_Out(2, 1, “(+,-,*,/)??”);
}
{
kp2 = 0;
do // Reset key code variable// Wait for key to be pressed and released
kp2 = Keypad_Key_Click(); // Store key code in kp2 variable
while (!kp2);
// Prepare value for output, transform key to it’s ASCII value
switch (kp2) {
case 4: kp2 = 47; break; // /
case 8: kp2 = 42; break; // *
case 12: kp2 = 45; break; // –
case 15: kp2 = 61; break; // =
case 16: kp2 = 43; break; // +
}
Lcd_Cmd(_LCD_CLEAR);
if (kp2 == 43) { // Give condition
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
do // Reset key code variable// Wait for key to be pressed and released
kp1 = Keypad_Key_Click(); // Store key code in kp1 variable
while (!kp1);
// Prepare value for output, transform key to it’s ASCII value
switch (kp1) {
case 1: kp1 = 55; break; // 7
case 2: kp1 = 56; break; // 8
case 3: kp1 = 57; break; // 9
case 5: kp1 = 52; break; // 4
case 6: kp1 = 53; break; // 5
case 7: kp1 = 54; break; // 6
case 9: kp1 = 49; break; // 1
case 10: kp1 = 50; break; // 2
case 11: kp1 = 51; break; // 3
case 14: kp1 = 48; break; // 0
}
kp1= kp1-48;intToStr(kp1, txt1); // Transform counter value to string
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1, 1, txt);
Lcd_out(1, 7, txt2);
Lcd_Out(1, 10, txt1);
Lcd_Out(2,1 , “Press = For Ans”);
}
{
kp3 = 0;
do // Reset key code variable


// Wait for key to be pressed and released
kp3 = Keypad_Key_Click(); // Store key code in kp3 variable
while (!kp3);

// Prepare value for output, transform key to it’s ASCII value
switch (kp3) {

case 15: kp3 = 61; break; // =

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