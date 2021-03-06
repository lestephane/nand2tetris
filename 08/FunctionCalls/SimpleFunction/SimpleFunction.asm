// // This file is part of www.nand2tetris.org
// // and the book "The Elements of Computing Systems"
// // by Nisan and Schocken, MIT Press.
// // File name: projects/08/FunctionCalls/SimpleFunction/SimpleFunction.vm
// 
// // Performs a simple calculation and returns the result.
// function SimpleFunction.test 2
(SimpleFunction.test)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push local 1
@LCL
D=M
@1
A=D+A
D=M
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
// push argument 0
@ARG
D=M
@0
A=D+A
D=M
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
// push argument 1
@ARG
D=M
@1
A=D+A
D=M
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
// return
@ARG
D=M
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
@ARG
A=M+1
D=A
@SP
M=D
@LCL
D=M
@5
M=D
@THAT
D=A
@R13
M=D
@5
AM=M-1
D=M
@R13
A=M
M=D
@THIS
D=A
@R13
M=D
@5
AM=M-1
D=M
@R13
A=M
M=D
@ARG
D=A
@R13
M=D
@5
AM=M-1
D=M
@R13
A=M
M=D
@LCL
D=A
@R13
M=D
@5
AM=M-1
D=M
@R13
A=M
M=D
@PC
D=A
@R13
M=D
@5
AM=M-1
D=M
@R13
A=M
M=D
