#include <detpic32.h>

int main(void) {
    LATB = LATB & 0x80FF;		
    LATD = LATD & 0xFF9F;		
    TRISB = TRISB & 0x80FF;     // RB8 a Rb14 saidas = 0
    TRISD = TRISD & 0xFF9F;     // Configure port as output

    LATDbits.LATD5 = 1;         // RD5 = 1 ativa o segmento da direita
    LATDbits.LATD6 = 0;         // RD6 = 0 

    char key, shf;

    while (1) {
        // char c = getChar(); 
        // switch (c)
        // {
        //     case 'A':
        //     case 'a':
        //         LATB = (LATB & 0x80FF) | 0x0100;      // RB8 = 1(?000 0001 ???? ????)
        //         break;
        
        //     case 'B':
        //     case 'b':
        //         LATB = (LATB & 0x80FF) | 0x0200;      // RB9 = 1 
        //         break;

        //     case 'C':
        //     case 'c':
        //         LATB = (LATB & 0x80FF) | 0x0400;      // RB10 = 1 
        //         break;

        //     case 'D':
        //     case 'd':
        //         LATB = (LATB & 0x80FF) | 0x0800;      // RB11 = 1 
        //         break;

        //     case 'E':
        //     case 'e':
        //         LATB = (LATB & 0x80FF) | 0x1000;      // RB12 = 1 
        //         break;

        //     case 'F':
        //     case 'f':
        //         LATB = (LATB & 0x80FF) | 0x2000;      // RB13 = 1 
        //         break;

        //     case 'G':
        //     case 'g':
        //         LATB = (LATB & 0x80FF) | 0x4000;      // RB14 = 1 
        //         break;

        //     default:
        //     break;
        // }

       key = getChar();
       if (key >= 'a' && key <= 'g')
       {
            shf = key - 'a' + 8;
            LATB = (LATB & 0x80FF) | (1 << shf);
       }
       else if (key >= 'A' && key <= 'G')
       {
            shf = key - 'A' + 8;
            LATB = (LATB & 0x80FF) | (1 << shf);
       }
    }
    return 0;
}