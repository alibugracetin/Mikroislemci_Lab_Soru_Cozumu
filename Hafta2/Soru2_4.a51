org 00h
	sjmp basla
	basla:
	
	
	mov a,#5d;
	mov b,#4d;
	mov R0,b;
	
	x2:		
			CJNE a,#120d,x1; //acc degeri ile 120d sayisi karsilasilastiriliyor. eger esit degilse x1 dallan.
			sjmp son;
			
			x1:	
					
					mul ab;	  //faktoriyel islemi
					dec R0;	  //faktoriyrel icin degerleri azaltiyor
					mov b,R0; //mul ab den sonra b degeri sifir oldugun için b'ye tekrar son olmasi gereken degeri atiyoruz.
					sjmp x2;
	
					mov P0,a;				//78h = 120d degeri port0 'a gönderildi
	
	son:
	
	end
