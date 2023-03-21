#include <detpic32.h>

void delay(int ms);

int main(void)
{
    LATCbits.LATC14 = 0;         // = 0 
    TRISCbits.TRISC14 = 0;      // Configure port 14 as output
        while(1)
        {
        delay(500);
        LATCbits.LATC14 = !LATCbits.LATC14; // Toggle RC14 port value, triggers
        }
    return 0;
}

void delay(int ms) {
    resetCoreTimer();
    while(readCoreTimer() < 20000 * ms);
} 