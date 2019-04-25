org 00h
	sjmp basla
	basla:
	
	mov 01h,#10d; 	//01h adresine tekrar sayisi belirtildi,
					;//R0 R1 gibi adresser yerine 01h gibi direct
					;//adres belirtilmesinin sebebi alt ram bölegesinin
					;//ust seviyesine djnz komutu ile FFh'e tekrar gitmememsi icin
	
	mov dptr,#veritabani;  //veritabaninin ilk elemaninin  adresi dptr'ye atandi
	mov r0,#9d;			  //10. eleman dan (9. sayi) dan geriye gelmesi icin R0 #9d sayisi atandi
		
		x1:
		mov a,r0;
		movc a,@a+dptr;		//10.sayi acc'ye atandi
		mov P0,a;			//deger P0 atandi
		dec r0;				//9.sayi... 8.sayi  ...   0.sayi
		djnz 01h,x1;		//kac defa yapislacagi belirtildi
	
	

	veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d;
	end