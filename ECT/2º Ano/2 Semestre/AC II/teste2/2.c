#include <detpic32.h>

    volatile static int voltage;

void send2displays(char value){
    int display7codes[] = { 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71 };
    static int displayFlag = 0;
    unsigned char dh = value >> 4;
    unsigned char dl = value & 0x0F;
    char segment;

    if(displayFlag == 0){
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        segment = display7codes[dl];
        LATB = (LATB & 0x80FF) | segment << 8;
    }else{
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        segment = display7codes[dh];
        LATB = (LATB & 0x80FF) | segment << 8;
    }
    displayFlag = displayFlag ^ 1;
}

char toBCD(char value){
    return ((value/10) << 4) + (value % 10);
}

void delay(unsigned int ms){
    int k = 20000;
    resetCoreTimer();
    while(readCoreTimer() < k * ms);
}

void _int_(8) isr_T2(void){
    send2displays(toBCD(voltage));
    IFS0bits.T2IF = 0;
} 

int voltageConversion(int voltage){
    int temp = ((voltage * 33 + 511) / 1024);
    int aux = 1.36*temp + 0.5;
    return  aux + 20;
}

int main (void){

    TRISBbits.TRISB4 = 1; // RBx digital output disconnected
    AD1PCFGbits.PCFG4= 0; // RBx configured as analog input
    AD1CON1bits.SSRC = 7; // Conversion trigger selection bits: in this
    AD1CON1bits.CLRASAM = 1; // Stop conversions when the 1st A/D converter
    AD1CON3bits.SAMC = 16; // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 1; // Interrupt is generated after XX samples
    AD1CHSbits.CH0SA = 4; // replace x by the desired input
    AD1CON1bits.ON = 1; // Enable A/D converter
   
    T2CONbits.TCKPS = 2;    //20000000/(65535*120)= 2,54 arredonda para 4;      (20000000/4)/(120)-1 = 41665
	PR2 = 41665;
	TMR2 = 0;
	T2CONbits.TON = 1;

	IPC2bits.T2IP = 2;
	IEC0bits.T2IE = 1;
    
    TRISD = (TRISD & 0xFF9F);
    TRISB = (TRISB & 0x80FF);

    IFS0bits.T2IF = 0;

    EnableInterrupts();
    
    while(1){
        delay(100);
        AD1CON1bits.ASAM = 1; // Start conversion
        while( IFS1bits.AD1IF == 0 ); // Wait while conversion not done 

        int soma = 0;
        int *p = (int *) (&ADC1BUF0);
        int i = 0;

        for(i = 0; i < 2; i++){
            soma += voltageConversion(p[i*4]); 
        }
        voltage = soma / 2;

        IFS1bits.AD1IF = 0;
    }

    return 0;
}
