#include "mbed.h"


DigitalOut led_red(PTE0);
DigitalOut led_green(PTD1);

InterruptIn sw1(PTD5);
InterruptIn sw2(PTD2);

int flag1= 0,flag2=0,flag3=0,flag4=0;
void task1(),task2(),task3(),task4();
float frequency_step = 0.1;

void sche(){
    if(flag4 == 1){
        task4();
    }else if( flag3 == 1 ){
        task3();
    }
}


void sw2_release(void)
{
    flag4 = 1;
}

void sw1_release(void)
{
    flag3 = 1;
}

void task1(){
    led_red = !led_red;
    for( int i = 0 ; i < 20 ; i++ ){
        wait(frequency_step);
    }
    led_red = !led_red;
    for( int i = 0 ; i < 20 ; i++ ){
        wait(frequency_step);
    }
    sche();
}

void task2(){
    led_green = !led_green;
    for( int i = 0 ; i < 20 ; i++ ){
        wait(frequency_step);
    }
    led_green = !led_green;
    for( int i = 0 ; i < 20 ; i++ ){
        wait(frequency_step);
    }
    sche();

}

void task3(){
    led_red=1;
    led_green =0;
    for( int i = 0 ; i < 20 ; i++ ){
        wait(frequency_step);
    }
    led_red=0;
    led_green =1;
    for( int i = 0 ; i < 20 ; i++ ){
        wait(frequency_step);
    }
    flag3=0;
    sche();
}

void task4(){
    led_red=1;
    led_green =1;
    for( int i = 0 ; i < 20 ; i++ ){
        wait(frequency_step);
    }
    led_red=0;
    led_green =0;
    for( int i = 0 ; i < 20 ; i++ ){
        wait(frequency_step);
    }
    flag4=0;
    sche();
}


int main()
{
    led_red = 0;
    led_green = 0;
    wait(2);
    sw1.rise(&sw1_release);
    sw2.rise(&sw2_release);
    while (true) {
        task1();
        task2();
    }
}
