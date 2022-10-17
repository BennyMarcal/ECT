int main(void)
 {
 // Configure UART2: 115200, N, 8, 1
 // Configure UART2 interrupts, with RX interrupts enabled
 //and TX interrupts disabled:
 //enable U2RXIE, disable U2TXIE (register IEC1)
 //set UART2 priority level (register IPC8)
 //clear Interrupt Flag bit U2RXIF (register IFS1)
 //define RX interrupt mode (URXISEL bits)
 // Enable global Interrupts
 while(1);
 return 0;
 } 