unsigned char toBCD(unsigned char value){
    return((value/10)<< 4)+ (value % 10 );
}

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