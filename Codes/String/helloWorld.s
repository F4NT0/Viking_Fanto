;	PROGRAMA DE HELLO WORLD
;	0xf000 E A FORMA DE IMPRIMIR LETRAS NO TERMINAL
main
	ldi	r1,0xf000
	ldi	r2,str
loop
	ldb	r3,r2
	stw	r3,r1
	add	r2,1
	bnz	r3,loop
	hcf

str	"hello world!"

