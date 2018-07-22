#include "mbed.h"
PwmOut myled(LED1);
DigitalIn button(PTD5);
int step;
int main() {
    button.mode(PullUp);
    myled.period(0.01);
    step = 0;
    myled = 1;
    while(1) {
        if(button == 0){
            step = step + 1;
            if(step == 6){
                myled = 1;
                step = 0;
            }
            else {
                myled = (5 - step) * 0.2;
            }
            wait(1);
        }
    }
}
