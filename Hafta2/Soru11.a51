org 00h
	sjmp basla
	basla:
	mov R0,#8d;
	JB P1.0,X3;
	JNB P1.0,X1;  port kontrolleri saglaniyor
		
		
		X1:
			mov a,#1h;
			X2:
			
			mov P3,a;
			rl a;  			rl komutu ile 2 katini alarak degerler portlara gonderiliyor
			djnz R0,X2;
			mov R0,#8d;
			sjmp X1;

	
	
	X3:
	sjmp basla; p1.0 dan 0 gelmesi bekleniyor /sonsuz dongu/
	
	end
