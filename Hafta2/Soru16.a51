org 00h
	sjmp basla
	basla:
		
		jnb P1.0,x1;
		jnb P1.1,x1;
		jnb P1.2,x1;
		jnb P1.3,x1;		//5,6,7 ve 8 satirlarda P1.0 dan P1.3 kadar olan butonlara basilip basilmadigi kontrol ediliyor
		jb P1.0,basla;		//P1 hicbir butona basilmazsa(degeri 1 olursa) program tekrar baslayacaktir. Bu kontrolu yapmak icin sadece bir pine
						   ;//bakmak yeterli olacaktir
		
		
					x1:
					anl P1,#00001111b;	//yüksek nibble'lar sifirlaniyor.
					mov a,P1;			//Portlardan Registere deger atilmadigi icin P1 degerini ACC'ye tasiniyor
					mov R0,a;
					mov R1,a;			//kacinci degere kadar toplayacagimin sinirini belirler
					x2:
					dec R0;
					addc a,R0;			//elde biti dahil edilerek toplanir
					djnz R1,x2;
					
					mov P3,a;		    //sonuc P3 portuna atilir
		
			
				
		end
