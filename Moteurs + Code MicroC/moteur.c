// Définition des broches de L298 :
#define OUT1 PORTD.RD0
#define OUT2 PORTD.RD1
#define OUT3 PORTD.RD2
#define OUT4 PORTD.RD3
#define ENA PORTD.RD4
#define ENB PORTD.RD5

// Développement de la fonction delay_ms :

// Programme principal
void main() {
    // Configuration des broches et initialisation des ports :
    TRISD = 0b00000000;

    PORTD = 0b00000000;

    while (1) {
        // Faire tourner les deux moteurs dans le sens 1 pendant 2 secondes :
        OUT1 = 1;
        OUT2 = 0;
        OUT3 = 1;
        OUT4 = 0;
        ENA = 1;
        ENB = 1;

        delay_ms(2000);

        // Arrêter les deux moteurs pendant 1 seconde :
        OUT1 = 0;
        OUT2 = 0;
        OUT3 = 0;
        OUT4 = 0;
        ENA = 0;
        ENB = 0;
        delay_ms(1000);

        // Faire tourner les deux moteurs dans le sens inverse pendant 2 secondes :
        OUT1 = 0;
        OUT2 = 1;
        OUT3 = 0;
        OUT4 = 1;
        ENA = 1;
        ENB = 1;

        delay_ms(2000);

        // Arrêter les deux moteurs pendant 1 seconde :
        OUT1 = 0;
        OUT2 = 0;
        OUT3 = 0;
        OUT4 = 0;
        ENA = 0;
        ENB = 0;
        delay_ms(1000);
    }
}