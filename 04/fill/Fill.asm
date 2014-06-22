// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.


(CHK_KEY)  //Loop Untill Key is pressed
@KBD
D=M
@CHK_KEY
D;JEQ


@KBD
M=0

@8191 //R1=8191
D=A
@R1
M=D

@SCREEN //Set screen starting address to R2
D=A
@R2
M=D

(LOOP_FILL)
@R2
D=M
A=D
M=-1
@R2
M=M+1

@R1
M=M-1
D=M
@LOOP_FILL
D;JNE
@CHK_KEY
0;JMP




