#include<detpic32.h>

void delay(unsigned int ms){

    resetCoreTimer();
    while(readCoreTimer()< 20000 * ms);
}
int main(void){
   static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
            char bit = 0;
            int samp = 2; 
           
            AD1PCFGbits.PCFG4= 0; // RBx configured as analog input
            AD1CON1bits.SSRC = 7; // Conversion trigger selection bits: in this
            // mode an internal counter ends sampling and
            // starts conversion
            AD1CON1bits.CLRASAM = 1; // Stop conversions when the 1st A/D converter
            // interrupt is generated. At the same time,
            // hardware clears the ASAM bit
            AD1CON3bits.SAMC = 16; // Sample time is 16 TAD (TAD = 100 ns)
            AD1CON2bits.SMPI =samp-1; // Interrupt is generated after XX samples
            // (replace XX by the desired number of
            // consecutive samples)
            AD1CHSbits.CH0SA = 4; // replace x by the desired input
            // analog channel (0 to 15)
            AD1CON1bits.ON = 1; // Enable A/D converter
            // This must the last command of the A/D
            // configuration sequence

            TRISEbits.TRISE1 = 0;
            TRISB = TRISB & 0X80FF;
            TRISD = TRISD & 0XFF9F;

            LATDbits.LATD5 = 1;
            LATDbits.LATD6 = 0;
            LATEbits.LATE1 = 1;

            int media;
            int V = 0;
            int unidade = 16;
            int digito = 4;
            TRISDbits.TRISD4 = bit;

            