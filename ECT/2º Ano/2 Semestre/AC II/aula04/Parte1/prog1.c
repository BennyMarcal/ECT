#include <detpic32.h>

void delay(int ms);

int main(void) {
    LATCbits.LATC14 = 0;         // = 0 
    TRISCbits.TRISC14 = 0;      // Configure port as output

    while (1) {
        delay(500);                          // Wait 0.5s
        LATCbits.LATC14 = !LATCbits.LATC14; // Toggle RC14 port value
    }
    return 0;
}

void delay(int ms) {
    resetCoreTimer();
    while(readCoreTimer() < 20000 * ms);
}