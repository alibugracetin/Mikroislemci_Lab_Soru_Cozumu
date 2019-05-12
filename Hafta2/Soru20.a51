org 00h
	sjmp basla
	basla:
	
		mov 00h,#0Ah;
		mov 01h,#08h;
		mov 02h,#05h;
		mov 03h,#11h;  //16 bitlik sayilar yuksek biti ve dusuk bitleri ayri ayri cikartilarak sonuca ulasilir
		
		
		mov a,02h;
		subb a,00h;
		
		mov 02h,a;
		
		clr c;		//birsonraki islem icin elde biti temizlenir
		
		
		mov a,03h;
		subb a,01h;
		mov 03h,a;
		
		   ;//yuksek bitlerin fark alimi isleminde eger sonuc negatif ise elde biti setlenir
		   ;//eger sonuc pozitif ise elde biti setlenmez. sayini pozitif yada negatif olacagini
		   ;//bu yöntem ile belirlenir.
		jb cy,x1;		   
		jnb cy,x2;
		x1:
			clr P1.2
		x2:
			clr P1.1
		
				
		end
			
