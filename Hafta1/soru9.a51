org 00h
	
	
	sjmp basla
	basla:
		mov R0,#04h;
		mov a,#33h;
		X1:
			mov @R0,a;
			inc a;
			djnz R0,X1;
			
			mov R0,#4h;
			
				mov b,#10h;
				mov a,@R0;
				div ab;
				mov 30h,a;
				
				dec R0;
				mov b,#10h;
				mov a,@R0;
				div ab;
				mov a,b;
				addc a,30h;
				mov 30h,a;
				
				dec R0;
				mov b,#10h;
				mov a,@R0;
				div ab;
				addc a,30h;
				mov 30h,a;
	
				dec R0;
				mov b,#10h;
				mov a,@R0;
				div ab;
				mov a,b;
				addc a,30h;
				mov 30h,a;
				
				
			mov P0,30h;
	
	
	
	
	
	end
