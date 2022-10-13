// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@2          //R2歸0
M=0

@0
D=M

@1
D=M

@3
M=D

@loop       //取R0值進迴圈(" > 0 ")       
D;JGT

(loop)

@1
D=M

@3          //R3值控制要不要跳EXIT
M=M-1
D=M

@EXIT
D;JLT

@0          //加
D=M         //到

@2          //R2
M=M+D       //裡

@loop
0;JMP

(EXIT)
@EXIT
0;JMP

