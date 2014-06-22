// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.

//r0,r1,r2
//while(r1=0)
//{
//r2=r1+r0
//r1=r1-1
//}


@R2 //Clear R2
M=0



(LOOP)
@R1
D=M  //D=R1
@END
D;JEQ  //If R1=0 END


@R0
D=M  //D=R0

@R2
M=M+D  //R2=R2+R0

@R1
M=M-1   //R1=R1-1

@LOOP
M;JNE   //IF(R1-1) NOT EQUAL TO ZERO JMP TO LOOP

(END)
@END
0;JMP  //infinite loop