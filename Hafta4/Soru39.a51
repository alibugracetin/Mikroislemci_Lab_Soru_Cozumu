org 00h
	sjmp basla
	basla:
		
bekle:  jb P1.0,bekle; S1 den gelen veri, Dolulugu olcen sensor
	jnb P1.0,dolu;
	
dolu:	acall bosalt;
	sjmp basla;

bosalt:		clr P2.0; start Pompa1
				  ; P1.2 Ariza sensoru Pompa1
		jnb P1.2,ariza;	Pompa1 de ariza VARSA ariza dallan
		jb P1.2,xx;	Pompa1 de ariza yoksa xx dallan
ariza:		acall bozuk;
xx:		
bekle2: 	jb P1.1,bekle2;
		jnb P1.1,x
		x:
		setb P2.0;
		setb p2.1;
		ret;
		

bozuk:		clr P2.1; Pompa 2 calistir
		setb P3.0; Ariza olan Pompa1 için uyari ver
		jb P1.3,xxx;
		jnb P1.3,bozuk2; Pompa 2 bozuklunca 
		bozuk2:
		setb P3.1; her ikiside bozuk olan sesli sinyal ver
		xxx:
		
		ret;
		
		end
