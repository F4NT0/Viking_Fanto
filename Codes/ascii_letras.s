;	TESTE DE LETRAS DA TABELA ASCII
;	IMPRIMINDO ABCD DA TABELA ASCII
;	65 = A 66 = B 67 = C 68 = D
main
	ldi	r1,65
	ldi	r2,66
	ldi	r3,67
	ldi	r4,68
	ldi	at,0xf000
	stw	r1,at
	stw	r2,at
	stw	r3,at
	stw	r4,at
	hcf
