#include "mbed.h"
DigitalIn button(PTD5);
DigitalOut myled(LED1);
int step;
int main() {
    button.mode(PullUp);
    step = 0;
    myled = 1;
    while(1) {
        if( button == 0 ){
            step = step + 1; 
            if(step == 6){
                step = 0;
            }
            while(button == 0){
                myled = 0;
                wait(step * 0.0005);
                myled = 1;
                wait((5-step) * 0.0005); 
            }
        }
        myled = 0;
        wait(step * 0.005);
        myled = 1;
        wait((5-step) * 0.005);        
    }
}