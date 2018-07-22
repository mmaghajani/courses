;*******************************************************************************
;	File:	m8_LCD_4bit.asm
;      Title:	ATmega8 driver for LCD in 4-bit mode (HD44780)
;  Assembler:	AVR assembler/AVR Studio
;    Version:	1.0
;    Created:	April 5th, 2004
;     Target:	ATmega8
; Christoph Redecker, http://www.avrbeginners.net
;*******************************************************************************

; Some notes on the hardware:
;ATmega8 (clock frequency doesn't matter, tested with 1 MHz to 8 MHz)
; PORTA.1 -> LCD RS (register select)
; PORTA.2 -> LCD RW (read/write)
; PORTA.3 -> LCd E (Enable)
; PORTA.4 ... PORTA.7 -> LCD data.4 ... data.7
; the other LCd data lines can be left open or tied to ground.

;.include "c:\program files\atmel\avr studio\appnotes\m8def.inc"

.equ	LCD_RS	= 1
.equ	LCD_RW	= 2
.equ	LCD_E	= 3

.def	temp	= r16
.def	argument= r17		;argument for calling subroutines
.def	return	= r18		;return value from subroutines



.org 0
rjmp reset
LCDTABLE: .DB 0X05,'M','A','H','D','I'
jmp EXT_INT0

reset:
	ldi r17, 0xF0
	ldi temp, (1<<JTD)
	out MCUCSR , temp
	out MCUCSR , temp
	out DDRC, r17
	ldi r21, 0x0F
	out PORTC, r21 ;; pull up
	
	ldi temp, (1 << ISC01) | (0 << ISC00)
	out MCUCR, temp
	
	in temp, GICR 
	ldi temp, ( 1<<INT0)
	out GICR, temp
	
	sei
	ldi	temp, low(RAMEND)
	out	SPL, temp
	ldi	temp, high(RAMEND)
	out	SPH, temp

;LCD after power-up: ("*" means black bar)
;|****************|
;|		  |

	rcall	LCD_init
	
;LCD now:
;|&		  | (&: cursor, blinking)
;|		  |
	
	rcall	LCD_wait
	rcall write_hello_world
	rcall LCD_delay
	rcall LCD_delay
	rcall LCD_delay
	rcall LCD_delay
	rcall LCD_delay
	rcall LCD_delay
	rcall LCD_delay
	rcall clear_hello_world
	rcall LCD
        rcall LCD_delay
	rcall LCD_delay
	rcall LCD_delay
	rcall LCD_delay
	rcall LCD_delay
	rcall LCD_delay
	rcall LCD_delay
	rcall clear_lcd


;|AA&		  | (A has been read from position 0 and has then been written to the next pos.)
;|		  |	
loop:	rjmp loop	



LCD:
  ldi ZL, low(LCDTABLE)
  ldi ZH, high(LCDTABLE)
  lpm r22, Z+
  lpm r22, Z+
  loop1:
      lpm argument, Z+
      rcall LCD_putchar
      rcall LCD_wait
      dec r22
      brne loop1
  ret
  
clear_lcd:
   rcall LCD_wait
   ldi argument, 0x80	;now let the cursor go to line 0, col 0 (address 0)
   rcall LCD_command	;for 
   rcall LCD_wait
  ldi ZL, low(LCDTABLE)
  ldi ZH, high(LCDTABLE)
  lpm r22, Z+
  lpm r22, Z+
  loop2:
      ldi argument, ' '
      rcall LCD_putchar
      rcall LCD_wait
      dec r22
      brne loop2
  rcall LCD_wait
   ldi argument, 0x80	;now let the cursor go to line 0, col 0 (address 0)
   rcall LCD_command	;for 
   rcall LCD_wait
  ret

write_hello_world:
   ldi argument, 'H'	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, 'E'	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, 'L'	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, 'L'	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, 'O'	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, 'W'	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, 'O'	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, 'R'	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, 'L'	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, 'D'	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ret
 
 clear_hello_world:
   rcall LCD_wait
   ldi argument, 0x80	;now let the cursor go to line 0, col 0 (address 0)
   rcall LCD_command	;for 
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, ' '	;write 'A' to the LCD char data RAM
   rcall LCD_putchar	  	
   rcall LCD_wait
   ldi argument, 0x80	;now let the cursor go to line 0, col 0 (address 0)
   rcall LCD_command	;for 
   rcall LCD_wait
   ret
lcd_command8:	;used for init (we need some 8-bit commands to switch to 4-bit mode!)
	in	temp, DDRA		;we need to set the high nibble of DDRA while leaving
					;the other bits untouched. Using temp for that.
	sbr	temp, 0b11110000	;set high nibble in temp
	out	DDRA, temp		;write value to DDRA again
	in	temp, PORTA		;then get the port value
	cbr	temp, 0b11110000	;and clear the data bits
	cbr	argument, 0b00001111	;then clear the low nibble of the argument
					;so that no control line bits are overwritten
	or	temp, argument		;then set the data bits (from the argument) in the
					;Port value
	out	PORTA, temp		;and write the port value.
	sbi	PORTA, LCD_E		;now strobe E
	nop
	nop
	nop
	cbi	PORTA, LCD_E
	in	temp, DDRA		;get DDRA to make the data lines input again
	cbr	temp, 0b11110000	;clear data line direction bits
	out	DDRA, temp		;and write to DDRA
ret

lcd_putchar:
	push	argument		;save the argmuent (it's destroyed in between)
	in	temp, DDRA		;get data direction bits
	sbr	temp, 0b11110000	;set the data lines to output
	out	DDRA, temp		;write value to DDRA
	in	temp, PORTA		;then get the data from PORTA
	cbr	temp, 0b11111110	;clear ALL LCD lines (data and control!)
	cbr	argument, 0b00001111	;we have to write the high nibble of our argument first
					;so mask off the low nibble
	or	temp, argument		;now set the argument bits in the Port value
	out	PORTA, temp		;and write the port value
	sbi	PORTA, LCD_RS		;now take RS high for LCD char data register access
	sbi	PORTA, LCD_E		;strobe Enable
	nop
	nop
	nop
	cbi	PORTA, LCD_E
	pop	argument		;restore the argument, we need the low nibble now...
	cbr	temp, 0b11110000	;clear the data bits of our port value
	swap	argument		;we want to write the LOW nibble of the argument to
					;the LCD data lines, which are the HIGH port nibble!
	cbr	argument, 0b00001111	;clear unused bits in argument
	or	temp, argument		;and set the required argument bits in the port value
	out	PORTA, temp		;write data to port
	sbi	PORTA, LCD_RS		;again, set RS
	sbi	PORTA, LCD_E		;strobe Enable
	nop
	nop
	nop
	cbi	PORTA, LCD_E
	cbi	PORTA, LCD_RS
	in	temp, DDRA
	cbr	temp, 0b11110000	;data lines are input again
	out	DDRA, temp
ret

lcd_command:	;same as LCD_putchar, but with RS low!
	push	argument
	in	temp, DDRA
	sbr	temp, 0b11110000
	out	DDRA, temp
	in	temp, PORTA
	cbr	temp, 0b11111110
	cbr	argument, 0b00001111
	or	temp, argument

	out	PORTA, temp
	sbi	PORTA, LCD_E
	nop
	nop
	nop
	cbi	PORTA, LCD_E
	pop	argument
	cbr	temp, 0b11110000
	swap	argument
	cbr	argument, 0b00001111
	or	temp, argument
	out	PORTA, temp
	sbi	PORTA, LCD_E
	nop
	nop
	nop
	cbi	PORTA, LCD_E
	in	temp, DDRA
	cbr	temp, 0b11110000
	out	DDRA, temp
ret

LCD_getchar:
	in	temp, DDRA		;make sure the data lines are inputs
	andi	temp, 0b00001111	;so clear their DDR bits
	out	DDRA, temp
	sbi	PORTA, LCD_RS		;we want to access the char data register, so RS high
	sbi	PORTA, LCD_RW		;we also want to read from the LCD -> RW high
	sbi	PORTA, LCD_E		;while E is high
	nop
	in	temp, PINA		;we need to fetch the HIGH nibble
	andi	temp, 0b11110000	;mask off the control line data
	mov	return, temp		;and copy the HIGH nibble to return
	cbi	PORTA, LCD_E		;now take E low again
	nop				;wait a bit before strobing E again
	nop	
	sbi	PORTA, LCD_E		;same as above, now we're reading the low nibble
	nop
	in	temp, PINA		;get the data
	andi	temp, 0b11110000	;and again mask off the control line bits
	swap	temp			;temp HIGH nibble contains data LOW nibble! so swap
	or	return, temp		;and combine with previously read high nibble
	cbi	PORTA, LCD_E		;take all control lines low again
	cbi	PORTA, LCD_RS
	cbi	PORTA, LCD_RW
ret					;the character read from the LCD is now in return

LCD_getaddr:	;works just like LCD_getchar, but with RS low, return.7 is the busy flag
	in	temp, DDRA
	andi	temp, 0b00001111
	out	DDRA, temp
	cbi	PORTA, LCD_RS
	sbi	PORTA, LCD_RW
	sbi	PORTA, LCD_E
	nop
	in	temp, PINA
	andi	temp, 0b11110000
	mov	return, temp
	cbi	PORTA, LCD_E
	nop
	nop
	sbi	PORTA, LCD_E
	nop
	in	temp, PINA
	andi	temp, 0b11110000
	swap	temp
	or	return, temp
	cbi	PORTA, LCD_E
	cbi	PORTA, LCD_RW
ret

LCD_wait:				;read address and busy flag until busy flag cleared
	rcall	LCD_getaddr
	andi	return, 0x80
	brne	LCD_wait
	ret


LCD_delay:
	clr	r2
	LCD_delay_outer:
	clr	r3
		LCD_delay_inner:
		dec	r3
		brne	LCD_delay_inner
	dec	r2
	brne	LCD_delay_outer
	
ret

LCD_init:
	
	ldi	temp, 0b00001110	;control lines are output, rest is input
	out	DDRA, temp
	
	rcall	LCD_delay		;first, we'll tell the LCD that we want to use it
	ldi	argument, 0x20		;in 4-bit mode.
	rcall	LCD_command8		;LCD is still in 8-BIT MODE while writing this command!!!

	rcall	LCD_wait
	ldi	argument, 0x28		;NOW: 2 lines, 5*7 font, 4-BIT MODE!
	rcall	LCD_command		;
	
	rcall	LCD_wait
	ldi	argument, 0x0F		;now proceed as usual: Display on, cursor on, blinking
	rcall	LCD_command
	
	rcall	LCD_wait
	ldi	argument, 0x01		;clear display, cursor -> home
	rcall	LCD_command
	
	rcall	LCD_wait
	ldi	argument, 0x06		;auto-inc cursor
	rcall	LCD_command
ret

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
	 ldi argument, '0'
	 rcall lcd_putchar
	 ret
      four:
	 ldi r20, 0x66
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, '4'
	 rcall lcd_putchar
	 ret
      eight:
	 ldi r20, 0x7f
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, '8'
	 rcall lcd_putchar
	 ret  
      C:
	 ldi r20, 0x39
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, 'C'
	 rcall lcd_putchar
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
	 ldi argument, '1'
	 rcall lcd_putchar
	 ret
      five:
	 ldi r20, 0x6d
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 ldi argument, '5'
	 rcall lcd_putchar
	 ret
      nine:
	 ldi r20, 0x6f
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, '9'
	 rcall lcd_putchar
	 ret  
      D:
	 ldi r20, 0x5e
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, 'D'
	 rcall lcd_putchar
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
	 ldi argument, '2'
	 rcall lcd_putchar
	 ret
      six:
	 ldi r20, 0x7d
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, '6'
	 rcall lcd_putchar
	 ret
      A:
	 ldi r20, 0x77
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, 'A'
	 rcall lcd_putchar
	 ret  
      E:
	 ldi r20, 0x79
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, 'E'
	 rcall lcd_putchar
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
	 ldi argument, '3'
	 rcall lcd_putchar
	 ret
      seven:
	 ldi r20, 0x07
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, '7'
	 rcall lcd_putchar
	 ret
      B:
	 ldi r20, 0x7c
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, 'B'
	 rcall lcd_putchar
	 ret  
      F:
	 ldi r20, 0x71
	 ldi temp, (0<<PC4)|(0<<PC5)|(0<<PC6)|(0<<PC7)
	 out PORTC,temp
	 ldi argument, 'F'
	 rcall lcd_putchar
	 ret