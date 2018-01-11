// arr = SCREEN
// for (i=0; i<8192; i++) {
//   arr[i] = -1
// }

// arr = SCREEN
	@SCREEN
	D=A
	@arr
	M=D

// n=8192
	@8192
	D=A
	@n
	M=D

	@i
	M=0
(LOOP)
  // if (i==n) goto END
	@i
	D=M
	@n
	D=D-M
	@END
	D; JEQ
	
	// RAM[arr+i] = -1
	@arr
	D=M
	@i
	A=D+M
	M=-1
	
	// i++
	@i
	M=M+1
	
	@LOOP
	0; JMP
	
(END)
	@END
	0; JMP
	