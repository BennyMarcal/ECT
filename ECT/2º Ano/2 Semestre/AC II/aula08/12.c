#include <detpic32.h>

void delay(unsigned int ms) {
	int K = 20000;
	resetCoreTimer(); 
	while(readCoreTimer() < K * ms);
}

int main(void){
    TRISDbits.TRISD8 = 1;
    TRISEbits.TRISE0 = 0;

    LATE = (LATE & 0xFF00);

    while(1){    
        if(PORTDbits.RD8 == 0){
            LATEbits.LATE0 = 1;
            int i=0;
            do{
                delay(3000);
                i++;
            }while(i<2);
            
            LATEbits.LATE0 = 0;
        }
    }    
    return 0;
}
