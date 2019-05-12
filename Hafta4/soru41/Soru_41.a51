;AT89s8253 1 makine çevrimi 1.2usn oldugu için 1 sn için gerekli makine çevrimi:
;	1 sn/1.2u sn = 833334 çevrim yapar. 16 bitlik zamanlayici kullanilarak yapilacak
;olan bu soruda bu kadar çevrime ulasabilmek için 833334/65535 = 12,716 defa yapilmasi gerekir. 
;TL0 ve TH0 sayicilarinin 0 dan 65535 e kadar 12 defa sayip ardindan 46924 den 65535 e kadar 
;tekrar saymasi gerekmektedir.46924 sayisi B74Ch sayisina esittir. Düsük nibble TL0'a 
;yüksek nibble TH0'a atilmalidir.

	org 00h
		sjmp basla
		
		basla:
		
		mov tmod,#00001001b; 0 ve 1. bit mod1(16 bitlik sayici/zamanlayici modu)
						   ; 2. bit zamanlayici (C/T0 = 0 ise zamanlayici modu)
						   ; 3. bit donanimsal/yazilimsal start (GATE0 = 1 ise donanimsal start)
						   ; Donanimsal start için P3.2 pininden lojik 1 olmasi gerekir. 
						   ; bu soruda P3.2 pinine bir buton baglanmadigi ve portlarin reset sonrasi
						   ; degeri FFh oldugu için yazilimsal yada donanimsal start vermek birseyi 
						   ; degistirmeyecektir. Her sartta timer/counter0 çalisacaktir.
						   
		
		mov tl0,#4ch;
		mov th0,#0b7h;
		mov R0,#13d; 12 defa 0 dan 65535'e kadar sayacak 13. sayisi 46924'den 65535'e kadar sayacaktir
		
bekle:	jb P0.0,bekle; 

		xx:
		setb tr0; TCON T/C0 baslatiliyor.
		cpl P1.0;
		
		x:
		jnb tf0,x; tasma kontrolu yapiliyor
		clr tf0;   eger tasma varsa temizleniyor
				 ;Tasma gerçeklesirse TCON daki TF0  biti setlenir
				  
		djnz R0,x; Bu islem 12+0,716 defa gerçeklestirilir
		
		;32.satirdan 37. satira kadar 1sn için gerekli olan sayma islemleri gerçeklestirilir.
		
		mov R0,#13d;
		mov tl0,#4ch;
		mov th0,#0b7h;
		;islem sonrasinda degerler tekrar yüklenir
		sjmp xx
		
		end;