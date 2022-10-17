#include <detpic32.h>

void delay(unsigned int ms){
    int k = 20000;
    resetCoreTimer();
    while (readCoreTimer() < k * ms);
}

int main(void){
    int val;
    int count = 0;
    int padrao = 1;
    TRISE = TRISE & 0xFFC0;
    TRISBbits.TRISB2 = 1;
    while(1){
        if(count == 6){              //quando chegar ao 5 digito reinicia
            count = 0;
            padrao = 1;
        }

    LATE = (LATE & 0xFFC0) | padrao;
    val = PORTBbits.RB2;               //quando clicar no 2

    if(val == 0){
        delay(1000/3);
    }else{
        delay(1000/15);
    }
    padrao = padrao << 1;
    count++;
    }
}