.686
.model flat
public _szukaj_max

.data

.code
_szukaj_max PROC
	push ebp
	mov ebp, esp
	ilosc=4

	;[ebp+8] a
	;[ebp+12] b
	;[ebp+16] c
	;[ebp+20] d
	
	mov ecx, 1;

	mov eax, [ebp+8] ; pierwsza liczba
	lea esi, [ebp+8] ; 

	porownoj:
		cmp eax, [esi + 4*ecx]
		jge nie_wieksza
			mov eax, [esi + 4*ecx]
		nie_wieksza:
	add ecx, 1
	cmp ecx, ilosc; 
	jb porownoj

	koniec:
; wynik w eax
_szukaj_max ENDP

END