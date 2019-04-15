org 00h
	//Soru1_8
	
	sjmp basla
	basla:
		mov R0,#04h;
		mov a,#33h;
		X1:
			mov @R0,a;
			inc a;
			djnz R0,X1;
	
//soru 1_8
			clr c;
			mov 30h,#00h;
			mov R0,#04h;
			X2:
				mov b,#10h;
				mov a,04h;
				div ab;
				addc a,30h;
				mov 30h,a;
				inc 04h;
				djnz R0,X2;
				mov P0,30h;
		
		
	end