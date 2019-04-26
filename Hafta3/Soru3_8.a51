org 00h
	sjmp basla
	basla:
	mov 01h,#10d;
	mov 00h,#0h;
	mov dptr,#veritabani;

	x3:
	mov a,00h;
	movc a,@a+dptr;
	clr cy;
	subb a,#16d;	  //eger veritabaninda 16d sayisi bulunursa acc degeri 16d olacaktir
					;//16d-16=0d olacagindan, 16d sayisi bulunursa p0.1, bulunmassa p0.2 yanacaktir
	cjne a,#00h,x1;
	
	sjmp x2;
	
	x2:
	clr P0.1;   	//16d sayisi varsa
	
	x1:
	clr P0.2;		//16d sayisi yoksa
	
	inc R0;
	djnz 01h,x3;
	
	sjmp son;	10 defa yaptiktan sonra programin bitmesi  icin
	
	
	
	veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d;
	
	son:
	end
