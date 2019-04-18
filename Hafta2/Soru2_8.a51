org 00h
	sjmp basla
	basla:
	
		jnb P1.0,X1;
		jnb P1.1,X1;
		jnb P1.2,X1;
		jnb P1.3,X1;
		jb p1.0,basla;
		
			x1:
		
				acall topla;			//PC Degeri artar. BuradakiAdresDeger+1 (geri donus adresi)SP da tutulur.
				mov P3,a;				//P3 portuna toplam deger atanir
				sjmp x1;				//Kontrolsuz alt programa girmesi onlenir
					
		
		topla:
					anl P1,#00001111b;	//yüksek nibble'lar sifirlaniyor.
					mov a,P1;			//Portlardan Registere deger atilmadigi icin P1 degerini ACC'ye tasiniyor
					mov R0,a;
					mov R1,a;			//kacinci degere kadar toplayacagimin sinirini belirler
					x2:
					dec R0;
					addc a,R0;			//elde biti dahil edilerek toplanir
					djnz R1,x2;			
					ret ;				//SP bulunan deger PC atanir ve program ACALL... fonksiyonunun altindan tekrar devam eder.
					
			
		end
						