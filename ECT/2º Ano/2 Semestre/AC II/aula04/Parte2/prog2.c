#include <detpic32.h>

void delay(int ms);

int main(void) {
    unsigned char segment;
    LATB = LATB & 0x80FF;		
    LATD = (LATD & 0xFF9F) | 0x0020; // RD5 = 1 & RD6 = 0	
    TRISB = TRISB & 0x80FF;     // configure RB8-RB14 as outputs
    TRISD = TRISD & 0xFF9F;     // configure RD5-RD6 as outputs
    int i;

    while(1){
        segment = 1;  
        for(i=0; i < 7; i++){
            LATB = (LATB & 0x80FF) | segment << 8; // send "segment" value to display
            delay(500);     // wait 0.5 second
            segment = segment << 1;
        }
        LATD = LATD ^ 0x0060;  // 0000 0000 0110 0000
        // LATDbits.LATD5 = !LATDbits.LATD5;         
        // LATDbits.LATD6 = !LATDbits.LATD6; 
    }
    return 0; 
}


void delay(int ms) {
    resetCoreTimer();
    while(readCoreTimer() < 20000 * ms);
}