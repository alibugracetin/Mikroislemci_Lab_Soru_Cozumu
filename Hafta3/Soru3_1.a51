org 00h
	sjmp basla
	basla:
		
		anl P3,#00001010b;	//P3 portunun yüksek nibble degerleri siliniyor
						  ;//Düsük nibble degerleri ise 10d yapiliyor.
						  
		mov a,P3;
		
		JNB P1.0,X1;
		JNB P1.1,X2;	//10 ve 11. satirda P1.0 ve P1.1 den gelen degerlere göre kosullar saglaniyor 
		
		x1:				;//Eger P1.0 basilmissa x1 etiketine dallaniyor
			rl a;		//iki kati aliniyor
			mov P2,a;	//sonuc P2 de gösteriliyor
			sjmp basla;	//dongunun tekrari saglaniyor
		
		x2:				;//eger P1.1 portuna baglanmissa x2 etiketine dallaniyor
			mov b,#3h;	
			mul ab;		//deger 3 ile carpiliyor
			mov P2,a;	
			sjmp basla;
	
	
	
	end