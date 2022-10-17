#include <detpic32.h>

void delay(int ms);

int main(void) {
    LATE = LATE & 0xFFF0;		// 0 as the output
    TRISE = TRISE & 0xFFF0;     // Configure port as output
    int count = 0;

    while (1) {
        LATE = (LATE & 0xFFF0) | count; 
        delay(250);              // 1/4hz = 250ms
        count = (count+1) & 0x000F; // ou count = (count + 1) % 16;
        // if(count > 15) {
        //    count = 0
        // }
    }
    return 0;
}

void delay(int ms) {
    resetCoreTimer();
    while(readCoreTimer() < 20000 * ms);
}