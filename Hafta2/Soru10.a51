org 00h
	sjmp basla
	basla:
	mov R0,#8d;
	JB P1.0,X3;
	JNB P1.0,X1;          port kontrolleri saglaniyor
		
		
		X1:
			mov a,#1h;
			X2:
			mov b,#2h;
			mov P3,a;
			mul ab; 		mul komutu ile iki kati aliniyor
			djnz R0,X2;		
			mov R0,#8d;
			sjmp X1;

	
	
	X3:
	sjmp basla;
	
	end
