	org 00h
		sjmp basla
		basla:
		
		mov R0,#1Fh;
		mov R1,#4Fh;
		mov R2,#16d;
		x:
		
			CJNE R0,#4Fh,x1;			//Adres byte degeri ile veriyi kontrol ediyor
			
				x1:
						mov a,R1;		//*
						mov @R0,a;		//* veriyi R0 gösterdigi yere atiyor
						dec R1;			//**
						dec R0;			//** byte adresini ve veriyi 1 azaltiyor 
						djnz R2,x;		//16 defa bu atamayi yapacak
						sjmp son;
					
		son:			
					
		end