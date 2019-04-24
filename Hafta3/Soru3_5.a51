org 00h
	sjmp basla
	basla:
	
	mov a,#8d;			//veritabanindan 8. sayiyi almak için acc ye 8 degeri verilir 
	mov dptr,#veritabani;		//veritabaninin ilk degerinin adresini dptr ye atanir
	movc a,@a+dptr;			// acc+dptr toplam degerinin adresi acc ye atanir
	mov P0,a;			// sonuc P0 da gösterilir
	sjmp basla;
	
	veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d;
	end
