#include <detpic32.h>

 volatile int adc_value;
 
int main(void){
    TRISBbits.TRISB4 = 1;       // RB4 digital output disconnected
    AD1PCFGbits.PCFG4 = 0;      // RB4 configured as analog input (AN4)
    AD1CON1bits.SSRC = 7;       // Conversion trigger constant
    AD1CON1bits.CLRASAM = 1;    // Stop conversion when the 1st A/D converter intetupr is generated.
                                // At the same time, hardware clears ASAM bit
    AD1CON3bits.SAMC = 16;      // Sample time is 16 TAD (TAD = 100ns)
    AD1CON2bits.SMPI = 0;       // Interrupt is generated after 1 sample
    AD1CHSbits.CH0SA = 4;       // analog channel input 4
    AD1CON1bits.ON = 1;         // Enable the A/d configuration sequence

    IPC6bits.AD1IP = 2;         // configure priority of A/D interrupts
    IFS1bits.AD1IF = 0;         // clear A/D interrupt flag
    IEC1bits.AD1IE = 1;         // enable A/D interrupts

    TRISD = TRISD & 0xFBFF;

    EnableInterrupts();

    AD1CON1bits.ASAM = 1;       // Start conversion

    while(1);
    
    return 0;
}

void _int_(27) isr_adc(void)
 {
 LATD = LATE & 0xFBFF;         // Reset RD11 (LATD11 = 0)
 adc_value = ADC1BUF0;         // Read ADC1BUF0 value to "adc_value"

 AD1CON1bits.ASAM = 1;         // Start A/D conversion

 LATD = LATE | 0x0800;         // Set RD11 (LATD11 = 1)
 IFS1bits.AD1IF = 0;           // Reset AD1IF flag
 } 
