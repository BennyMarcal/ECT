#include <detpic32.h>

void setPWM(unsigned int dutyCycle){               //FUNCAO PARA DECORAR, DUTY CYCLE
    if(dutyCycle > 0 && dutyCycle < 100){          //METER NO TESTE         
        OC2RS = (dutyCycle * (PR2 +1)) / 100;
    }
}

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer() < 20000 * ms);
}

int main (void){

    T2CONbits.TCKPS = 2; //20000000/(65535*150)= 2,034536253 arredonda para 4;      
    PR2 = 33332;        //(20000000/4)/(150)-1 = 33332
    TMR2 = 0;
    T2CONbits.TON = 1;

    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;

    OC2CONbits.OCM = 6; 
    OC2CONbits.OCTSEL = 0;
    OC2CONbits.ON = 1;

    TRISBbits.TRISB0 = 1;
    TRISBbits.TRISB3 = 1;
    TRISDbits.TRISD1 = 0;
    TRISEbits.TRISE2 = 0;
    TRISEbits.TRISE6 = 0;
    TRISEbits.TRISE3 = 0;
    TRISEbits.TRISE5 = 0;

    char val;
    char x=25;

    while(1){
        delay(0.25);

        val = PORTB & 0x0009;

        if(val == 0x1){
            x = 25;
            LATEbits.LATE2 = 1;
            LATEbits.LATE6 = 0;
        }else if (val == 0x8){
            x = 70;
            LATEbits.LATE2 = 0;
            LATEbits.LATE6 = 1;
        }else{
            LATEbits.LATE3 = 1;
            LATEbits.LATE5 = 1;
        }
        setPWM(x);
        IFS0bits.T2IF = 0;
    }
    return 0;
}