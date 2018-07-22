#include "mbed.h"
class Speaker
{
public:
    Speaker(PinName pin) : _pin(pin) {
    }
    void PlayNote(float frequency, float duration, float volume) {
        _pin.period(1.0/frequency);
        _pin = volume/2.0;
        wait(duration);
        _pin = 0.0;
    }
 
private:
    PwmOut _pin;
};

int main()
{

    Speaker mySpeaker(PTD2);
    float volume = 0.4;
    float prod = 1.0;
    while(1) {
      mySpeaker.PlayNote(329.63* prod, 0.3, volume);
      mySpeaker.PlayNote(311.13* prod, 0.3, volume);
      mySpeaker.PlayNote(329.63* prod, 0.3, volume);
      mySpeaker.PlayNote(311.13* prod, 0.3, volume);
      mySpeaker.PlayNote(329.63* prod, 0.3, volume);
      mySpeaker.PlayNote(246.94* prod, 0.3, volume);
      mySpeaker.PlayNote(293.66* prod, 0.3, volume);
      mySpeaker.PlayNote(261.63* prod, 0.3, volume);
      mySpeaker.PlayNote(220* prod, 0.9, volume);
      mySpeaker.PlayNote(146.83* prod, 0.3, volume);
      mySpeaker.PlayNote(174.61* prod, 0.3, volume);
      mySpeaker.PlayNote(220* prod, 0.3, volume);
      mySpeaker.PlayNote(246.94* prod, 0.9, volume);
      mySpeaker.PlayNote(174.61* prod, 0.3, volume);
      mySpeaker.PlayNote(233.08* prod, 0.3, volume);
      mySpeaker.PlayNote(246.94* prod, 0.3, volume);
      mySpeaker.PlayNote(261.63* prod, 0.4, volume);
      mySpeaker.PlayNote(329.63* prod, 0.3, volume);
      mySpeaker.PlayNote(311.13* prod, 0.3, volume);
      mySpeaker.PlayNote(329.63* prod, 0.3, volume);
      mySpeaker.PlayNote(311.13* prod, 0.3, volume);
      mySpeaker.PlayNote(329.63* prod, 0.3, volume);
      mySpeaker.PlayNote(246.94* prod, 0.3, volume);
      mySpeaker.PlayNote(293.66* prod, 0.3, volume);
      mySpeaker.PlayNote(261.63* prod, 0.3, volume);
      mySpeaker.PlayNote(220* prod, 0.9, volume);
      mySpeaker.PlayNote(146.83* prod, 0.3, volume);
      mySpeaker.PlayNote(174.61* prod, 0.3, volume);
      mySpeaker.PlayNote(220* prod, 0.3, volume);
      mySpeaker.PlayNote(246.94* prod, 0.9, volume);
      mySpeaker.PlayNote(174.61* prod, 0.3, volume);
      mySpeaker.PlayNote(261.63* prod, 0.3, volume);
      mySpeaker.PlayNote(246.94* prod, 0.3, volume);
      mySpeaker.PlayNote(220* prod, 0.9, volume);
      mySpeaker.PlayNote(246.94* prod, 0.3, volume);
      mySpeaker.PlayNote(261.63* prod, 0.3, volume);
      mySpeaker.PlayNote(293.66* prod, 0.3, volume);
      mySpeaker.PlayNote(329.63* prod, 0.9, volume);
      mySpeaker.PlayNote(196* prod, 0.3, volume);
      mySpeaker.PlayNote(349.23* prod, 0.3, volume);
       mySpeaker.PlayNote(329.23* prod, 0.3, volume);
       mySpeaker.PlayNote(293.63* prod, 0.9, volume);
       mySpeaker.PlayNote(164.81* prod, 0.3, volume);
       mySpeaker.PlayNote(329.63* prod, 0.3, volume);
       mySpeaker.PlayNote(293.63* prod, 0.3, volume);
       mySpeaker.PlayNote(261.63* prod, 0.9, volume);
       mySpeaker.PlayNote(146.83* prod, 0.3, volume);
       mySpeaker.PlayNote(293.63* prod, 0.3, volume);
       mySpeaker.PlayNote(261.63* prod, 0.3, volume);
       mySpeaker.PlayNote(246.94* prod, 0.9, volume);
       mySpeaker.PlayNote(329.63* prod, 0.3, volume);
       mySpeaker.PlayNote(311.13* prod, 0.3, volume);
       mySpeaker.PlayNote(329.63* prod, 0.3, volume);
       mySpeaker.PlayNote(311.13* prod, 0.3, volume);
       mySpeaker.PlayNote(329.63* prod, 0.3, volume);
       mySpeaker.PlayNote(246.94* prod, 0.3, volume);
       mySpeaker.PlayNote(293.66* prod, 0.3, volume);
       mySpeaker.PlayNote(261.63* prod, 0.3, volume);
       mySpeaker.PlayNote(220* prod, 0.9, volume);
       mySpeaker.PlayNote(146.83* prod, 0.3, volume);
       mySpeaker.PlayNote(174.61* prod, 0.3, volume);
       mySpeaker.PlayNote(220* prod, 0.3, volume);
       mySpeaker.PlayNote(246.94* prod, 0.9, volume);
       mySpeaker.PlayNote(174.61* prod, 0.3, volume);
       mySpeaker.PlayNote(233.08* prod, 0.3, volume);
       mySpeaker.PlayNote(246.94* prod, 0.3, volume);
       mySpeaker.PlayNote(261.63* prod, 0.9, volume);
       mySpeaker.PlayNote(329.63* prod, 0.3, volume);
       mySpeaker.PlayNote(311.13* prod, 0.3, volume);
       mySpeaker.PlayNote(329.63* prod, 0.3, volume);
       mySpeaker.PlayNote(311.13* prod, 0.3, volume);
       mySpeaker.PlayNote(329.63* prod, 0.3, volume);
       mySpeaker.PlayNote(246.94* prod, 0.3, volume);
       mySpeaker.PlayNote(293.66* prod, 0.3, volume);
       mySpeaker.PlayNote(261.63* prod, 0.3, volume);
       mySpeaker.PlayNote(220* prod, 0.9, volume);
       mySpeaker.PlayNote(146.83* prod, 0.3, volume);
       mySpeaker.PlayNote(174.61* prod, 0.3, volume);
       mySpeaker.PlayNote(220* prod, 0.3, volume);
       mySpeaker.PlayNote(246.94* prod, 0.9, volume);
       mySpeaker.PlayNote(174.61* prod, 0.3, volume);
       mySpeaker.PlayNote(261.63* prod, 0.3, volume);
       mySpeaker.PlayNote(246.94* prod, 0.3, volume);
       mySpeaker.PlayNote(220* prod, 0.9, volume);
    }
}