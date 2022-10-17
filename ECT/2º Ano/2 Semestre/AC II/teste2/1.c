#include <detpic32.h>

void setPWM(unsigned int dutyCycle){
    if(dutyCycle > 0 && dutyCycle < 100){
        OC2RS = (dutyCycle * (PR3 +1)) / 100;
    }
}

int main (void){

    T2CONbits.TCKPS = 2; //20000000/(65535*150)= 2,034536253 arredonda para 4;      (20000000/4)/(150)-1 = 33332
    PR2 = 33332;
    TMR2 = 0;
    T2CONbits.TON = 1;

    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;

    OC2CONbits.OCM = 6; 
    OC2CONbits.OCTSEL =0;
    OC2CONbits.ON = 1;

    TRISB = (TRISB | 0x0009);
    char portVal;

    while(1){
        resetCoreTimer();       
        //250 microsec = 250000ns
        //ciclos = 250000 / 150 = 1666 ciclos;
        while(readCoreTimer() < 1666);

        portVal = PORTB & 0x0009;
        char k;

        if(portVal == 0x1){
            k = 25;
            setPWM(k);
        }else if(portVal == 0x8){
            k = 70;
            setPWM(k);
        }else{
            setPWM(k);
        }
        IFS0bits.T3IF = 0;
    }
    return 0;
}
