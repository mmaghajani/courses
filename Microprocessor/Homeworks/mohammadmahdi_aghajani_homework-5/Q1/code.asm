.def temp = r16
.org $000
jmp reset
jmp EXT_INT0
jmp EXT_INT1
reset:
  ldi temp, 0x20
  out DDRD,temp
  ldi temp, 0xFF
  out DDRB, temp
  ldi temp, 0x00
  out PORTB, temp
  ldi r17, 0xF0
  ldi temp, (1<<JTD)
  out MCUCSR , temp
  out MCUCSR , temp
  out DDRC, r17
  ldi r21, 0x0F
  out PORTC, r21 ;; pull up
  
  ldi temp, (1 << ISC11) | (0 << ISC01)
  out MCUCR, temp
  
  ldi temp, (1 << ISC01) | (0 << ISC00)
  out MCUCR, temp
  
  in temp, GICR 
  ldi temp, (1<<INT1) | ( 1<<INT0)
  out GICR, temp
  
  sei

Main :
   rjmp Main
   
EXT_INT0:
   call KeyFind
   reti
  
KeyFind:
   SBIS PINC , 0
   rjmp coloumn1
   SBIS PINC , 1
   rjmp coloumn2
   SBIS PINC , 2
   rjmp coloumn3
   SBIS PINC , 3
   rjmp coloumn4
   ;rjmp KeyFind

   coloumn1:
      ldi temp, (1<<PC4)
      out PORTC , temp
      SBIC PINC, 0
      rjmp zero
      
      ldi temp, (0<<PC4)|(1<<PC5)
      out PORTC , temp
      SBIC PINC, 0
      rjmp four
      
      ldi temp, (0<<PC5)|(1<<PC6)
      out PORTC , temp
      SBIC PINC, 0
      rjmp eight
      
      ldi temp, (0<<PC6)|(1<<PC7)
      out PORTC , temp
      SBIC PINC, 0
      rjmp C
      
      zero:
	 ldi r20, 0x3f
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x3F
	 out PORTB, temp
	 ret
      four:
	 ldi r20, 0x66
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x66
	 out PORTB, temp
	 ret
      eight:
	 ldi r20, 0x7f
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x7F
	 out PORTB, temp
	 ret  
      C:
	 ldi r20, 0x39
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x39
	 out PORTB, temp
	 ret
	 
   coloumn2:
      ldi temp, (1<<PC4)
      out PORTC , temp
      SBIC PINC, 1
      rjmp one
      
      ldi temp, (0<<PC4)|(1<<PC5)
      out PORTC , temp
      SBIC PINC, 1
      rjmp five
      
      ldi temp, (0<<PC5)|(1<<PC6)
      out PORTC , temp
      SBIC PINC, 1
      rjmp nine
      
      ldi temp, (0<<PC6)|(1<<PC7)
      out PORTC , temp
      SBIC PINC, 1
      rjmp D
      
      one:
	 ldi r20, 0x06
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x06
	 out PORTB, temp
	 ret
      five:
	 ldi r20, 0x6d
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x6D
	 out PORTB, temp
	 ret
      nine:
	 ldi r20, 0x6f
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x6F
	 out PORTB, temp
	 ret  
      D:
	 ldi r20, 0x5e
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x5E
	 out PORTB, temp
	 ret
	 
   coloumn3:
      ldi temp, (1<<PC4)
      out PORTC , temp
      SBIC PINC, 2
      rjmp two
      
      ldi temp, (0<<PC4)|(1<<PC5)
      out PORTC , temp
      SBIC PINC, 2
      rjmp six
      
      ldi temp, (0<<PC5)|(1<<PC6)
      out PORTC , temp
      SBIC PINC, 2
      rjmp A
      
      ldi temp, (0<<PC6)|(1<<PC7)
      out PORTC , temp
      SBIC PINC, 2
      rjmp E
      
      two:
	 ldi r20, 0x5b
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x5B
	 out PORTB, temp
	 ret
      six:
	 ldi r20, 0x7d
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x7D
	 out PORTB, temp
	 ret
      A:
	 ldi r20, 0x77
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x77
	 out PORTB, temp
	 ret  
      E:
	 ldi r20, 0x79
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x79
	 out PORTB, temp
	 ret
	 
   coloumn4:
      ldi temp, (1<<PC4)
      out PORTC , temp
      SBIC PINC, 3
      rjmp three
      
      ldi temp, (0<<PC4)|(1<<PC5)
      out PORTC , temp
      SBIC PINC, 3
      rjmp seven
      
      ldi temp, (0<<PC5)|(1<<PC6)
      out PORTC , temp
      SBIC PINC, 3
      rjmp B
      
      ldi temp, (0<<PC6)|(1<<PC7)
      out PORTC , temp
      SBIC PINC, 3
      rjmp F
      
      three:
	 ldi r20, 0x4f
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x4F
	 out PORTB, temp
	 ret
      seven:
	 ldi r20, 0x07
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x07
	 out PORTB, temp
	 ret
      B:
	 ldi r20, 0x7c
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x7C
	 out PORTB, temp
	 ret  
      F:
	 ldi r20, 0x71
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi temp , 0x00
	 out PORTB, temp
	 ldi temp , 0x71
	 out PORTB, temp
	 ret
   
EXT_INT1:
     SBIS PIND,5
     jmp set_led
     jmp clear_led
     set_led:
      sBI PORTd,5
      reti
     clear_led:
      CBI POrtd,5
     reti