org 00h
	sjmp basla
	basla:
	mov R0,#8d; port sayisina gore dongu sayisi                     
	JB P1.0,X3;
	JNB P1.0,X1; 5 ve 6 satirda P1.0 daki bitin kontolu yapiliyor
		
		;sagdan sola dogru
		;6.satirdaki durumun saglanmasi durumunda
		X1:
		
	
			mov a,#1h; 
			X2:
			JB P1.0,X3;  dongu icerisinde port kontrolu
			mov b,#2h; 
			mov P3,a; 
			mul ab;
			djnz R0,X2;
			mov R0,#8d;
			sjmp X1;  sonsuz dongu

	
			;soldan saga dogru
			;5.satirdaki durum saglanmasi durumunda
			X3:
			
	
				mov a,#80h; 
				X4:
				JNB P1.0,X1;
				mov b,#2h;
				mov P3,a;
				div ab;
				djnz R0,X4;
				mov R0,#8d;
				mov a,#80h;
				sjmp X4;
	
	
	end