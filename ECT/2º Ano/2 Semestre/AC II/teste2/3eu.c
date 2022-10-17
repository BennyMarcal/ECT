#include <detpic32.h>

volatile int count;
void putc(char byte){
    while(U2STAbits.UTXBF == 1);
    U2TXREG = byte;
}
void putstr(char *str){
    while(*str != '\0'){
        putc(*str);
        str++;
    }
}
int main(void){
    U2BRG = 129;      
    U2MODEbits.PDSEL = 10;
    U2MODEbits.STSEL = 1;
    U2STAbits.UTXEN = 1;    
    U2STAbits.URXEN = 1;

    IEC1bits.U2TXIE = 0;    
    IEC1bits.U2RXIE = 1;
    IPC8bits.U2IP = 2;    
    IFS1bits.U2RXIF = 0;                       
    U2STAbits.URXISEL = 0;                        

    U2MODEbits.ON = 1;

    TRISE = TRISE & 0xFFE1;
    count = 15;
    LATE = (LATE | (count << 1)) & (count << 1);

    EnableInterrupts();

    while(1);
    return 0;
}

void _int_(32) isr_uart2(void) {
    if(IFS1bits.U2RXIF == 1){
        char c = U2RXREG;
        if(c == 'U'){
            count++;
            LATE = (LATE | (count << 1)) & (count << 1);
        } else if(c == 'R'){
            count = 0;
            LATE = (LATE | (count << 1)) & (count << 1);
            putstr(" RESET \r \n");
        }

    }
    IFS1bits.U2RXIF = 0;
}