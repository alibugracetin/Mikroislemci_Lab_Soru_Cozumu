org 00h
	
	sjmp basla
	basla:
		mov R0,#04h;
		mov a,#33h;
		X1:
			mov @R0,a; //R0 gösterdigi yere a degerleri atanir.
			inc a;
			djnz R0,X1;
	
		
		
		
	end