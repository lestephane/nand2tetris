// // This file is part of www.nand2tetris.org
// // and the book "The Elements of Computing Systems"
// // by Nisan and Schocken, MIT Press.
// // File name: projects/07/StackArithmetic/StackTest/StackTest.vm
// 
// // Executes a sequence of arithmetic and logical operations
// // on the stack.
// push constant 17
@17
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 17
@17
D=A
@SP
AM=M+1
A=A-1
M=D
// eq
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=M
@6
D=D-M
@EQ0
D;JEQ
D=0
@EQEND0
0;JMP
(EQ0)
D=-1
(EQEND0)
@5
M=D
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 17
@17
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// eq
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=M
@6
D=D-M
@EQ1
D;JEQ
D=0
@EQEND1
0;JMP
(EQ1)
D=-1
(EQEND1)
@5
M=D
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 16
@16
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 17
@17
D=A
@SP
AM=M+1
A=A-1
M=D
// eq
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=M
@6
D=D-M
@EQ2
D;JEQ
D=0
@EQEND2
0;JMP
(EQ2)
D=-1
(EQEND2)
@5
M=D
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 892
@892
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 891
@891
D=A
@SP
AM=M+1
A=A-1
M=D
// lt
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=M
@6
D=D-M
@LT3
D;JLT
D=0
@LTEND3
0;JMP
(LT3)
D=-1
(LTEND3)
@5
M=D
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 891
@891
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 892
@892
D=A
@SP
AM=M+1
A=A-1
M=D
// lt
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=M
@6
D=D-M
@LT4
D;JLT
D=0
@LTEND4
0;JMP
(LT4)
D=-1
(LTEND4)
@5
M=D
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 891
@891
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 891
@891
D=A
@SP
AM=M+1
A=A-1
M=D
// lt
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=M
@6
D=D-M
@LT5
D;JLT
D=0
@LTEND5
0;JMP
(LT5)
D=-1
(LTEND5)
@5
M=D
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 32767
@32767
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 32766
@32766
D=A
@SP
AM=M+1
A=A-1
M=D
// gt
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=M
@6
D=D-M
@GT6
D;JGT
D=0
@GTEND6
0;JMP
(GT6)
D=-1
(GTEND6)
@5
M=D
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 32766
@32766
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 32767
@32767
D=A
@SP
AM=M+1
A=A-1
M=D
// gt
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=M
@6
D=D-M
@GT7
D;JGT
D=0
@GTEND7
0;JMP
(GT7)
D=-1
(GTEND7)
@5
M=D
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 32766
@32766
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 32766
@32766
D=A
@SP
AM=M+1
A=A-1
M=D
// gt
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=M
@6
D=D-M
@GT8
D;JGT
D=0
@GTEND8
0;JMP
(GT8)
D=-1
(GTEND8)
@5
M=D
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 57
@57
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 31
@31
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 53
@53
D=A
@SP
AM=M+1
A=A-1
M=D
// add
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@6
D=M
@5
M=D+M
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 112
@112
D=A
@SP
AM=M+1
A=A-1
M=D
// sub
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=M
@6
M=M-D
@5
D=A
@1
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// neg
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
M=-M
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// and
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@6
D=M
@5
M=D&M
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 82
@82
D=A
@SP
AM=M+1
A=A-1
M=D
// or
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@6
D=M
@5
M=D|M
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// not
@5
D=A
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@5
M=!M
@5
D=A
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
