#include "mbed.h"
#include "PololuLedStrip.h"

PololuLedStrip ledStrip(PTD7);
#define LED_COUNT 16
rgb_color colors[LED_COUNT];

InterruptIn sw1(PTD5);
InterruptIn sw2(PTD2);

void pattern1(){
    for(int i = 0; i < LED_COUNT; i++)
    {
        if( i%2 == 0 ){
            colors[i] = (rgb_color){255, 0, 0};//red
        }else{
            colors[i] = (rgb_color){43, 0, 255};//blue
        }
        
    }
    ledStrip.write(colors, LED_COUNT);
}
    
void pattern2(){
    for(int i = 0; i < LED_COUNT; i++)
    {
        if( i%2 == 0 ){
            colors[i] = (rgb_color){0, 255, 85};//green
        }else{
            colors[i] = (rgb_color){255, 247, 0};//yellow
        }
        
    }
    ledStrip.write(colors, LED_COUNT);
}
int main() {
    sw1.rise(&pattern1);
    sw2.rise(&pattern2);
    for(int i = 0; i < LED_COUNT; i++)
    { 
        colors[i] = (rgb_color){255, 0, 247};//purple
        
    }
    ledStrip.write(colors, LED_COUNT);
}
/*
#include "mbed.h"
#include "WS2812.h"
#include "PixelArray.h"

#define WS2812_BUF 150
#define NUM_COLORS 16
#define NUM_LEDS_PER_COLOR 10

PixelArray px(WS2812_BUF);

// See the program page for information on the timing numbers
// The given numbers are for the K64F
WS2812 ws(PTD7, WS2812_BUF, 0, 5, 5, 0);

int main()
{

    ws.useII(WS2812::PER_PIXEL); // use per-pixel intensity scaling
     
    // set up the colours we want to draw with
    int colorbuf[NUM_COLORS] = {0x2f0000,0x2f2f00,0x002f00,0x002f2f,0x00002f,0x2f002f};

    // for each of the colours (j) write out 10 of them
    // the pixels are written at the colour*10, plus the colour position
    // all modulus 60 so it wraps around
    for (int i = 0; i < WS2812_BUF; i++) {
        px.Set(i, colorbuf[(i / NUM_LEDS_PER_COLOR) % NUM_COLORS]);
    }

    // now all the colours are computed, add a fade effect using intensity scaling
    // compute and write the II value for each pixel
    for (int j=0; j<WS2812_BUF; j++) {
        // px.SetI(pixel position, II value)
        px.SetI(j%WS2812_BUF, 0xf+(0xf*(j%NUM_LEDS_PER_COLOR)));
    }


    // Now the buffer is written, rotate it
    // by writing it out with an increasing offset
    while (1) {
        for (int z=WS2812_BUF; z >= 0 ; z--) {
            ws.write_offsets(px.getBuf(),z,z,z);
            wait(0.075);
        }
    }

}

*/