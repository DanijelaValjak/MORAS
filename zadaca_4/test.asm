//push constant 13
@13
D=A
@SP
M=M+1
A=M-1
M=D
//push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D
//push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
//pop local 5
@5
D=A
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
//add
@SP
AM=M-1
D=M
A=A-1
M=M+D
