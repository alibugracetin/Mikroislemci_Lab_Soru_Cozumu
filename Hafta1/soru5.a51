

	org 00h
		sjmp basla
		basla:
		mov R0,#12h;
		mov R1,#34h;
		
		mov B,#10h;
		mov a,R0;
		div AB;
		mov 10h,a; //hn
		mov 11h,b;  //ln
		
		mov B,#10h;
		mov a,R1;
		div AB;
		mov 12h,a; //hn
		mov 13h,b;  //ln
		
		mov a,10h;
		add a,13h;
		mov 14h,a; //1 hn+ln
		
		mov a,12h;
		add a,11h;
		mov 15h,a;
		
		mov P0,14h;
		mov P1,15h;
		
		
		