// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Tam-CO's code here:

(LOOP)
	@SCREEN
	D=A
	@i
	M=D

	@KBD
	D=M
	@BLACKEN
	D;JNE
	
	(WHITEN)
		@i
		A=M
		M=0
		@i
		M=M+1
		@i
		D=M
		@24575
		D=D-A
		@LOOP
		D;JGT
		@WHITEN
		D;JLE
	
	

	(BLACKEN)
		@i
		A=M
		M=-1
		@i
		M=M+1
		@i
		D=M
		@24575
		D=D-A
		@LOOP
		D;JGT
		@BLACKEN
		D;JLE
