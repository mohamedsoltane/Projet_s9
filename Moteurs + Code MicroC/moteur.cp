#line 1 "C:/Users/ASUS/Desktop/Moteurs/moteur.c"









void delay_ms(int ms)
{
 int i, j;
 for (i = 0; i < ms; i++)
 {
 for (j = 0; j < 8000; j++)
 {
 }
 }
}

void main() {

 TRISD = 0b00000000;

 PORTD = 0b00000000;

 while (1) {

  PORTD.RD0  = 1;
  PORTD.RD1  = 0;
  PORTD.RD2  = 1;
  PORTD.RD3  = 0;
  PORTD.RD4  = 1;
  PORTD.RD5  = 1;

 delay_ms(2000);


  PORTD.RD0  = 0;
  PORTD.RD1  = 0;
  PORTD.RD2  = 0;
  PORTD.RD3  = 0;
  PORTD.RD4  = 0;
  PORTD.RD5  = 0;
 delay_ms(1000);


  PORTD.RD0  = 0;
  PORTD.RD1  = 1;
  PORTD.RD2  = 0;
  PORTD.RD3  = 1;
  PORTD.RD4  = 1;
  PORTD.RD5  = 1;

 delay_ms(2000);


  PORTD.RD0  = 0;
  PORTD.RD1  = 0;
  PORTD.RD2  = 0;
  PORTD.RD3  = 0;
  PORTD.RD4  = 0;
  PORTD.RD5  = 0;
 delay_ms(1000);
 }
}
