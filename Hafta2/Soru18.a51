org 00h
	sjmp basla;
	basla:
		
		mov a,P0;
		mov 00h,a;
		
		mov a,P3;
		
		subb a,00h;  //P0 ve P3 portundan alinan degerlerin farki hesaplanir
		clr c;		
		
		jz x1;		//eger sonuc(acc) sifir ise x1 dallanir
		sjmp x2;	//sonuc sifir degilse x2 dallanir
		
				x1:
					mov P1,#2h;		//P1.1 aktif edilir
					sjmp basla;
		
				x2:
					mov P1,#4h;		//P1.2 aktif edilir
					sjmp basla;
		
		
		end
