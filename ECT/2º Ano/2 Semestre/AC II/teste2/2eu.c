#include <detpic32.h>

volatile int voltage = 0;

int voltageConversion(int voltage){
    int temp = (voltage * 33 + 511) / 1024;
    int aux = 1.50 * temp + 0.5;
    return aux + 15;
}

void send2display(char value){
    int display7codes[] = { 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71 };
    static int displayFlag = 0;
    unsigned char dh  = value >> 4;
    unsigned char dl  = value & 0x0F;
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

char toBCD(int value){
    return ((value/10) << 4) + (value % 10);
}


int main(void) {
    TRISBbits.TRISB4 = 1;  // RBx digital output disconnected
    AD1PCFGbits.PCFG4 = 0; // RBx configured as analog input
    AD1CON1bits.SSRC = 7;  // Conversion trigger selection bits: in this
    // mode an internal counter ends sampling and
    // starts conversion
    AD1CON1bits.CLRASAM = 1; // Stop conversions when the 1st A/D converter
    // interrupt is generated. At the same time,
    // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;     // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 2 - 1; // Interrupt is generated after XX samples
    // (replace XX by the desired number of
    // consecutive samples)
    AD1CHSbits.CH0SA = 4; // replace x by the desired input
    // analog channel (0 to 15)
    AD1CON1bits.ON = 1; // Enable A/D converter
                        // This must the last command of the A/D
                        // configuration sequence

    T2CONbits.TCKPS = 2; // 1:32 prescaler (i.e Fout_presc = 625 KHz)
    PR2 = 41666;         // Fout = 20MHz / (2^n * (PR2 + 1)) = 120 Hz
    TMR2 = 0;            // Reset timer T2 count register
    T2CONbits.TON = 1;   // Enable timer T2 (must be the last command of the
    // timer configuration sequence)

    IPC2bits.T2IP = 2; // Interrupt priority (must be in range [1..6]) 
    IEC0bits.T2IE = 1; // Enable timer T2 interrupts 
    IFS0bits.T2IF = 0; // Reset timer T2 interrupt flag 

    TRISD = (TRISD & 0xFF9F);  //ligar outputs, mete a 0 e usa &
    TRISB = (TRISB & 0x80FF);  //ligar inouts, mete a 1 e usa |

    EnableInterrupts();

    while(1){
        resetCoreTimer();
        while(readCoreTimer() < 2000);

        AD1CON1bits.ASAM = 1;               // Start conversion
        while( IFS1bits.AD1IF == 0 );       // Wait while conversion not don

        int i = 0,sum = 0;
        int *p = (int*)(&ADC1BUF0);
        for(;i < 2;i++){
            sum += voltageConversion(p[i*4]);
        }

        voltage = sum / 2;

        IFS1bits.AD1IF = 0;
    }
    return 0;
}

void _int_(8) isr_T2(void) {
    send2display(toBCD(voltage));
    IFS0bits.T2IF = 0;
}