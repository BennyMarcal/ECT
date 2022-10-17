#include <detpic32.h>

void delay(unsigned int ms){
    int k = 20000;
    resetCoreTimer();
    while(readCoreTimer() < k * ms);
}

int main(void){
    int count = 0;              //counter pra incrementar em cada posicao
    int sol = 3;
    int but;

    TRISE = TRISE & 0XFFC0;     //OUTPUT DAS LUZES, ATIVAR O LED 1111 1111 11 00 0000
    TRISBbits.TRISB2 = 1;       //LIGAR O PORT DO SWITCH

    while(1){
    if (count == 6){            //CONTAGEM ATÉ 6
        sol = 3;                //REINICIAR TUDO
        count = 0;
    }

    LATE = (LATE & 0xFFC0) | sol;   //ACENDER O LED NO LUGAR CORRETO
    but = PORTBbits.RB2;        //LIGAR A VARIAVEL AO BUTTON 2 , SWITCH 2

    if(but == 0){               //CASO O BOTAO N FOR ATIVO, CONTINUA COM 3HZ
        delay(1000/3);
    }else{                      //SE O BOTAO FOR ATIVO, VAI PRA 7HZ
        delay(1000/18);
    }
    count++;                    //INCREMENTAÇÃO
    sol = sol << 1;
    }
    return 0;
}