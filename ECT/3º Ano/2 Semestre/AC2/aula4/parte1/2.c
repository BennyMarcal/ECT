#include <detpic32.h>

void delay(int ms);

int main(void) {
    LATE = LATE & 0xFF87;		// 0 as the starting output for RE6-RE3
    TRISE = TRISE & 0xFF87;     // Configure port RE6-RE3 as output
    unsigned int count = 0;

    while (1) {
        
        delay(250);              // 1/4hz = 250ms
        
        count += 1;

        if(count % 10 == 0){
            count = 0;
        }

        LATE = (LATE & 0xFF87) | (count<<3); 
        // if(count > 15) {
        //    count = 0
        // }
    }
    return 0;
}

void delay(int ms){
    resetCoreTimer();
    while(readCoreTimer() < 20000 * ms);
}