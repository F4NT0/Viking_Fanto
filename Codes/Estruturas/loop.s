;	PROGRAMA DE LOOP ETERNO
;	É UM WHILE QUE NÃO ENCERRA
main
while
	ldw	r1,a
	ldi	at,0xf002
	stw	r1,at
	bnz	r7,while

a	2
