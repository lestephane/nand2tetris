// // Sys.vm for NestedCall test.
// 
// // Sys.init()
// //
// // Calls Sys.main() and stores return value in temp 1.
// // Does not return.  (Enters infinite loop.)
// 
// function Sys.init 0
(Sys.init)
// push constant 4000
@4000
D=A
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 5000
@5000
D=A
@SP
AM=M+1
A=A-1
M=D
// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// UNSUPPORTED: call Sys.main 0
// pop temp 1
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
// label LOOP
(LOOP)
// goto LOOP
@LOOP
0;JMP
// 
// // Sys.main()
// //
// // Sets locals 1, 2 and 3, leaving locals 0 and 4 unchanged to test
// // default local initialization to 0.  (RAM set to -1 by test setup.)
// // Calls Sys.add12(123) and stores return value (135) in temp 0.
// // Returns local 0 + local 1 + local 2 + local 3 + local 4 (456) to confirm
// // that locals were not mangled by function call.
// 
// function Sys.main 5
(Sys.main)
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
@0
D=A
@SP
AM=M+1
A=A-1
M=D
// push constant 4001
@4001
D=A
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 5001
@5001
D=A
@SP
AM=M+1
A=A-1
M=D
// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 200
@200
D=A
@SP
AM=M+1
A=A-1
M=D
// pop local 1
@LCL
D=M
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
// push constant 40
@40
D=A
@SP
AM=M+1
A=A-1
M=D
// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 6
@6
D=A
@SP
AM=M+1
A=A-1
M=D
// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 123
@123
D=A
@SP
AM=M+1
A=A-1
M=D
// UNSUPPORTED: call Sys.add12 1
// pop temp 0
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
// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
AM=M+1
A=A-1
M=D
// push local 4
@LCL
D=M
@4
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
// 
// // Sys.add12(int n)
// //
// // Returns n+12.
// 
// function Sys.add12 0
(Sys.add12)
// push constant 4002
@4002
D=A
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 5002
@5002
D=A
@SP
AM=M+1
A=A-1
M=D
// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
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
// push constant 12
@12
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
