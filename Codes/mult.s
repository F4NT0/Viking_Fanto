;	MULTIPLICAÇÃO DE DOIS VALORES
;	VALORES IMPRESSOS NO TERMINAL
;	UTILIZA SOMAS SUCESSIVAS
;	stw r3,at faz com que o resultado saia no terminal

main
	ldw	r1,a
	ldw	r2,b
	xor	r3,r3,r3
rep
	add	r3,r1,r3
	sub	r2,1
	bnz	r2,rep
fim
	stw	r3,res
	ldi	at,0xf002
	stw	r3,at
	hcf

a	3
b	5
res	0
