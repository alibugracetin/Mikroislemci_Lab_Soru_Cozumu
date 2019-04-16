org 00h
	sjmp basla
	basla:
	
		mov R0,#1Fh;
		mov a,#70d;
		mov R2,#16d;
		
		x2:
		
			cjne R0,#70d,X1;			;//bu islemden sonra elde biti setleniyor
										;//cikartma isleminde elde biti kullanildigi
										;//icin elde biti temizlenmeli
										;ELDE BITININ OLUSMA SEBEBI
											;CJNE Rn, #immediate, offset
											;CJNE
											;PC = PC + 3
											;IF Rn <> immedate
											  ;PC = PC + offset
											;IF Rn < immediate
											  ;C = 1
											;ELSE
											  ;C = 0
											;Example	
											;CJNE R6, #12H, LABEL
											
											;kaynak
											;http://www.keil.com/support/man/docs/is51/is51_cjne.htm
														
				x1:
					
						clr c;			//elde biti temizleniyor
						mov @R0,a;
						subb a,#02d;	
						dec R0;
						djnz R2,X2;
						sjmp son;
						
		son:

		end;