#include <detpic32.h>

void delay(unsigned int ms) {
	int K = 20000;
	resetCoreTimer(); 
	while(readCoreTimer() < K * ms);
}

void send2displays(unsigned char value) {
	static const char display7Scodes[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67,0x77,0x7C,0x39,0x5E,0x79,0x71};
	static char displayFlag = 0;

	LATDbits.LATD5 = displayFlag ^ 1;
	LATDbits.LATD6 = displayFlag;

	char value_normalized = (value >> displayFlag*4) & 0x0F;
	char segment = display7Scodes[ value_normalized ];
	LATB = (LATB & 0x80FF) | segment << 8;

	displayFlag = displayFlag ^ 1;
}

unsigned char toBcd(unsigned char value) 
{ 
	return ((value / 10) << 4) + (value % 10); 
}

int main(void) {
    TRISB = (TRISB & 0x80F0) | 0x000F;
	TRISD = (TRISD & 0xFF9F);
    
    TRISBbits.TRISB4 = 1;       // RBx digital output disconnected 
    AD1PCFGbits.PCFG4= 0;       // RBx configured as analog input 
    AD1CON1bits.SSRC = 7;       // Conversion trigger selection bits: in this 
                                //  mode an internal counter ends sampling and 
                                //  starts conversion 
    AD1CON1bits.CLRASAM = 1;    // Stop conversions when the 1st A/D converter 
                                //  interrupt is generated. At the same time, 
                                //  hardware clears the ASAM bit 
    AD1CON3bits.SAMC = 16;      // Sample time is 16 TAD (TAD = 100 ns) 
    AD1CON2bits.SMPI = 4-1;    // Interrupt is generated after XX samples 
                                //  (replace XX by the desired number of 
                                //  consecutive samples) 
    AD1CHSbits.CH0SA = 4;       // replace x by the desired input  
                                //  analog channel (0 to 15) 
    AD1CON1bits.ON = 1;         // Enable A/D converter 
                                //  This must the last command of the A/D 
                                //  configuration sequence 

    int i = 0;
    int V = 0;
    while(1) {
        if( i==0 ) {
            AD1CON1bits.ASAM = 1;
            while( IFS1bits.AD1IF == 0 );
            int *p = (int *)(&ADC1BUF0);
            int j;
            printf("\r");
            for (j = 0; j < 16; j++)
            {
                printf("%4d ", p[j*4]);
            }
            int VAL_AD = ADC1BUF0 + ADC1BUF1 + ADC1BUF2 + ADC1BUF3;
            V = ((VAL_AD/4)*33+511)/1023;
            printf(" V: %2d", V);
            IFS1bits.AD1IF = 0;
        }
        send2displays(toBcd(V));
        delay(10);
        i = (i + 1) % 20;
    }

    return 0;
}