org 00h
	sjmp basla
	basla:
	
	mov 01h,#10d; 	//01h adresine tekrar sayisi belirtildi,
					;//R0 R1 gibi adresser yerine 01h gibi direct
					;//adres belirtilmesinin sebebi alt ram bölegesinin
					;//ust seviyesine djnz komutu ile FFh'e tekrar gitmememsi icin
	
	mov dptr,#veritabani;  //veritabaninin ilk elemaninin  adresi dptr'ye atandi
	mov r0,#0d;			  //1. eleman dan (0. sayi) dan ileri gitmesi icin R0 #0d sayisi atandi
		
		x1:
		mov a,r0;
		movc a,@a+dptr;		//0.sayi acc'ye atandi
		mov P0,a;			//deger P0 atandi
		inc r0;				//0.sayi .... 1.sayi .........  9.sayi
		djnz 01h,x1;		//kac defa yapislacagi belirtildi
	
	

	veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d;
	end