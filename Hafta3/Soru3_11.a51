org 00h
	sjmp basla
	basla:
	
		mov 00h,#5d;
		mov r1,#1d;
		mov dptr,#veritabani;
		mov a,r1; 

		x1:
				movc a,@a+dptr;	
				addc a,R7;  //1.sayi+3.sayi+...+9.sayi
				mov R7,a;	//toplam R7 de saklaniyor
				mov a,r1;	
				add a,#2d;		
				mov r1,a;		
				djnz 00h,x1;
		
		mov 00h,#5d;
		mov r1,#0d;
		mov a,r1;
		
		x2:
				movc a,@a+dptr;	
				addc a,R6;  //0.sayi+2.sayi+...+8.sayi
				mov R6,a;	//toplam R6 de saklaniyor
				mov a,r1;	
				add a,#2d;		
				mov r1,a;		
				djnz 00h,x2;
		
		mov a,R7;
		clr cy;
		subb a,R6;	//sonuc negatif cikiyor. Negatif sonucda elde biti setlenir.
		jb cy,x3;	
		jnb cy,x4;	//35. ve 36. satirda elde bitinin setlenip setlenmedigi kontrol ediliyor.
		
			x4:
				clr P0.1; 	//sonuc pozitif ise P0.1 ledi yanar
			
			x3:
				clr P0.2; 	//sonuc negatif ise P0.2 ledi yanar
		
	
		veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d;
	
	end