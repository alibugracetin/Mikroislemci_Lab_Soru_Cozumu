org 00h
	sjmp basla
	basla:
	
	
	mov psw,#18h;
	mov R0,#10h;
	mov R1,#17d; //17 defa islem yapacak 17 sayi var
	X:
	mov a,R0;
	mov @R0,a;
	dec R0;
	djnz R1,X;
	/////topla
	mov R1,#17d;
	mov R0,#10h;
	topla:
	mov 48h,@R0;
	mov a,49h;
	addc a,48h;
	mov 49h,a;
	dec R0;
	djnz R1,topla
	mov P0,49h;

		
	end