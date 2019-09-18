; PROGRAMA DE TESTE DE IGUALDADE ENTRE DOIS VALORES
; Se a = b então sai o resultado 1
; Se a != b então sai o resultado 0

main	
	ldw	r1,a
	ldw	r2,b
	sub	r3,r1,r2
	bez	r3,if
if
	ldw	r4,d
	ldi	at,0xf002
	stw	r4,at
	hcf
else
	ldw	r4,c
	ldi	at,0xf002
	stw	r4,at
	hcf

a	2
b	2
c	0
d	1
