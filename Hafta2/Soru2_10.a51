org 00h
	sjmp basla
	basla:
		
		mov a,P3;
		mov 00h,a;
		
		mov a,P2;
		
		subb a,00h; 	//p2-p3 islemi yapilir. eger bit setlenirse P3>p2 demektir, setlenmezse P2>P3 demektir
		jb	cy,x1		// bit setlenirsae x1 gider
		jnb cy,x2		// bit setlenmezse x2 gider
		x1:
			mov P1,#2h;	
			clr cy;
			sjmp basla;
		
		
		x2:
			mov P1,#4h;
			clr cy;
			sjmp basla;
	
	
	
	
	end