org 00h
	sjmp basla
	basla:
	
	mov R0,#10d;
	
	mov a,R0;
	dec r0;
	topla:
	mov R1,a;
	addc a,R0;
	djnz R0,topla
	mov P0,a;
	end