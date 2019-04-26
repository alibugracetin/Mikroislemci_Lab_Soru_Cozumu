org 00h
	sjmp basla
	basla:
	
		mov 00h,#5d;
		mov r1,#1d;
		mov dptr,#veritabani;
		mov a,r1; 		//veritabaninin ilk verisini gormek icin aac'ye 1d atanir
		x1:
		movc a,@a+dptr;	//veritananindan acc.deger alinir ve acc ye atanir
		mov P0,a;		//sonuc P0 da gösterilir
		mov a,r1;		//1.sayi   3.sayi   5. sayi ....  9.sayiya erisilecek deger acc ye atanir
		add a,#2d;		//1d+2d=3.sayi
		mov r1,a;		//birsonraki dongude +2.sayiya ulasmak icin acc son deger r1 atanir
		djnz 00h,x1;
		
	
		
		veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d;
	
	end