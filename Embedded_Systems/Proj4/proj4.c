#include "mbed.h"


DigitalOut green1(PTE0);

DigitalOut green2(PTC9);

DigitalOut green3(PTA12);

DigitalOut green4(PTB10);

DigitalOut green5(PTE2);

DigitalOut green6(PTE20);

InterruptIn urgent1(PTD5);
InterruptIn urgent2(PTD2);

int s = 0;
int OFF = 0;
int ON = 1;

void urgent1Release(void){
    int stemp = s;
    
    int green1temp = green1;
   
    int green2temp = green2;
    
    int green3temp = green3;
    
    int green4temp = green4;

    int green5temp = green5;

    int green6temp = green6;
    

    green1 = OFF;

    green2 = OFF;

    green3 = ON;

    green4 = OFF;

    green5 = OFF;

    green6 = OFF;
    
    for( int j = 0 ; j < 20 ; j++ ){
        wait(0.1);
    }
    s = stemp;
    
    green1 = green1temp;

    green2 = green2temp;

    green3 = green3temp;

    green4 = green4temp;

    green5 = green5temp;

    green6 = green6temp;
}

void urgent2Release(void){
    int stemp = s;

    int green1temp = green1;

    int green2temp = green2;

    int green3temp = green3;

    int green4temp = green4;

    int green5temp = green5;

    int green6temp = green6;
    

    green1 = OFF;

    green2 = OFF;
 
    green3 = OFF;

    green4 = OFF;

    green5 = OFF;

    green6 = ON;

    for( int j = 0 ; j < 20 ; j++ ){
        wait(0.1);
    }
    s = stemp;

    green1 = green1temp;

    green2 = green2temp;

    green3 = green3temp;

    green4 = green4temp;

    green5 = green5temp;

    green6 = green6temp;
}  

int main() {
    urgent1.fall(&urgent1Release);
    urgent2.fall(&urgent2Release);
    
    while(1) {
        if( s == 0 ){
   
            green1 = OFF;
  
            green2 = OFF;
       
            green3 = OFF;
      
            green4 = ON;
       
            green5 = ON;
       
            green6 = OFF;
            for( int j = 0 ; j < 34 ; j++ ){
                wait(0.1);
            }
            s = 1;
        }else if( s == 1 ){
            
            green1 = ON;
            
            green2 = OFF;
            
            green3 = ON;
            
            green4 = OFF;
            
            green5 = OFF;
            
            green6 = ON;
            for( int j = 0 ; j < 26 ; j++ ){
                wait(0.1);
            }
            s = 2;
        }else{
            
            green1 = ON;
    
            green2 = ON;
     
            green3 = OFF;
       
            green4 = OFF;

            green5 = OFF;
     
            green6 = OFF;
            for( int j = 0 ; j < 55 ; j++ ){
                wait(0.1);
            }
            s = 0;
        }
    }
}
