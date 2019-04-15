org 00h
	sjmp basla
	basla:
	
	mov r0,#5d;
	mov r1,#4d;
	x:
	mov a,r0;
	mov b,R1;
	mul ab;
	mov 48h,a;
	mov R0,48h;
	djnz r1,x;
	mov P0,R0;
		
	end