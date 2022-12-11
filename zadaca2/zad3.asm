@RO
D=M

@MAX
M=D

@i
M=1

(LOOP_START)
	@i
	D=M
	
	@4
	D=D-A
	
	@LOOP_END
	D; JGT
	
	@i
	A=M
	D=M
	
	@max
	D=D-M
	
	@not_max
	D; JLE
	
	@i
	A=M
	D=M
	
	@max 
	M=D
	
	(NOT_MAX)
	
	@i
	M=M+1
	
	@LOOP_START
	0; JMP
	
	(LOOP_END)
	
@max
D=M

@RS
M=D

(END)
@END
0;JMP