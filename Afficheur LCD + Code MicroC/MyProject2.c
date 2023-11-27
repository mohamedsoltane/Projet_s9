#include <stdio.h>
#include <stdlib.h>
#include <built_in.h>

// LCD module connections
sbit LCD_RS at RC2_bit;
sbit LCD_EN at RC3_bit;
sbit LCD_D4 at RC4_bit;
sbit LCD_D5 at RC5_bit;
sbit LCD_D6 at RC6_bit;
sbit LCD_D7 at RC7_bit;

sbit LCD_RS_Direction at TRISC2_bit;
sbit LCD_EN_Direction at TRISC3_bit;
sbit LCD_D4_Direction at TRISC4_bit;
sbit LCD_D5_Direction at TRISC5_bit;
sbit LCD_D6_Direction at TRISC6_bit;
sbit LCD_D7_Direction at TRISC7_bit;
// End LCD module connections

#define ferin PORTA.RA5
#define niv1  PORTA.RA1
#define niv2 PORTA.RA2
#define niv3 PORTA.RA3
#define niv4 PORTA.RA4

void main() {
    TRISA=1;
    Lcd_Init(); // Initialiser l'écran LCD

    while (1) {
        Lcd_Cmd(_LCD_CLEAR);  // Effacer l'écran à chaque itération

        if (ferin == 0) {
            Lcd_Cmd(_LCD_CURSOR_OFF);
            Lcd_Out(1, 1, "R");
            Delay_ms(500);
        } else {
            Lcd_Cmd(_LCD_CURSOR_OFF);
            Lcd_Out(1, 1, "S");
            Delay_ms(500);
        }

        if (niv1 == 1 && niv2 == 0 && niv3 == 0 && niv4 == 0) {
            Lcd_Cmd(_LCD_CURSOR_OFF);
            Lcd_Out(1, 7, "niv H 1");
            Delay_ms(500);
        }

        if ((niv1 == 1 || niv1 == 0) && niv2 == 1 && niv3 == 0 && niv4 == 0) {
            Lcd_Cmd(_LCD_CURSOR_OFF);
            Lcd_Out(1, 7, "niv H 2");
            Delay_ms(500);
        }

        if ((niv1 == 1 || niv1 == 0) && (niv2 == 1 || niv2 == 0) && niv3 == 1 && niv4 == 0) {
            Lcd_Cmd(_LCD_CURSOR_OFF);
            Lcd_Out(1, 7, "niv H 3");
            Delay_ms(500);
        }

        if ((niv1 == 1 || niv1 == 0) && (niv2 == 0 || niv2 == 1) && (niv3 == 0 || niv3 == 1) && niv4 == 1) {
            Lcd_Cmd(_LCD_CURSOR_OFF);
            Lcd_Out(1, 7, "niv H 4");
            Delay_ms(500);
        }
    }
}