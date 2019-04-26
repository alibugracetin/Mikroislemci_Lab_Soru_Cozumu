org 00h
	sjmp basla
	basla:
	
		mov 00h,#5d;
		mov r1,#1d;
		mov dptr,#veritabani;
		mov a,r1; 		
		
				x1:
				movc a,@a+dptr;	
				addc a,03h; //1.sayi+3.sayi+...+9.sayi
				mov 03h,a;	//toplam 03h de saklaniyor
				mov a,r1;	
				add a,#2d;		
				mov r1,a;		
				djnz 00h,x1;
				mov P0,03h;
	
		veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d;
	
	end