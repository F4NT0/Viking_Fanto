;	PROGRAMA DE TESTE DE UM WHILE COMPLETO 
; ENQUANTO O VALOR DE A FOR MAIOR QUE ZERO ELE PERMANECE NO WHILE
main
	ldw	r1,a
while
	sub	r1,1
	ldi	at,0xf002
	stw	r1,at
	bez	r1,endwhile
	bnz	r7,while
endwhile
	hcf

a	200
