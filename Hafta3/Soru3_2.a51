org 00h
	sjmp basla
	basla:
	
		anl P3,#00001010b;
		mov a,P3;
		
		JNB P1.0,X1;
		JNB P1.1,X2;
		
		x1:acall carp2;		//alt programa dallanir
		sjmp basla;			//alt programa kontrolsuz gitmesi onlenir
		x2:acall carp3;
		sjmp basla;
		
		carp2:
				rl a;
				mov P2,a;
				ret			;//alt programin bittigini belirtir
		
		carp3:
				mov b,#3h;
				mul ab;
				mov P2,a;				
				ret
	
	end
