;	PROGRAMA DE SUBTRAÇÃO SUCESSIVA
;	resto = dividendo;
;	while(resto >= divisor)
;		resto -= divisor
;		quociente++;
main
	ldw	r1,dividendo
	stw	r1,resto
	ldw	r2,resto
	ldw	r4,quociente
	ldw	r5,divisor
	slt	r3,r5,r2
	bnz	r3,while
	bez	r3,end
while
	sub	r3,r3,r5
	add	r4,1
	slt	r3,r5,r2
	bnz	r3,while
	bez	r3,end
end
	ldi	at,0xf002
	stw	r4,at
	hcf

dividendo	88
divisor	5
quociente	0
resto	0
