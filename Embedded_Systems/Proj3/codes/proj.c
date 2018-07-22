// This program blinks the red LED on the FRDM-KL25 board. // The red LED is connected to PORTB pin 18 and is low active. 
 
#include <MKL25Z4.H> 
 
void delay(int n) { 
int i; 
for(i = 0; i < n; i++) ;
} 
 
int main (void) {
/*
	SIM->SCGC5 |= 0x0400;       // enable clock to Port B  
PORTB->PCR[18] = 0x0100;    // make pin PTB18 as GPIO 
 
FPTB->PDOR = 0x40000;       // switch Red/Green LED off  
FPTB->PDDR = 0x40000;       // enable PTB18/19 as Output 
 
while(1) { 
FPTB->PCOR = 0x40000;   // make the pin output low 
delay(5000000);        
FPTB->PSOR = 0x40000;   // make the pin output high
delay(5000000); 
}
	*/
}
