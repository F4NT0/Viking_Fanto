; LENDO O VETOR COMPLETO DE STRING
; TEMOS QUE CRIAR UM LOOP PARA PODER PASSAR NOS VETORES
main
	ldi	r1,hello
	ldi	r3,0
	ldi	r5,tamanho
loop
	add	r1,r3
	ldb	r2,r1
	stw	r2,0xf000
	slt	r4,r3,r5
	add	r3,1
	bez	r4,end
	bnz	r4,loop
end
	hcf

hello	"ESCREVENDO NO TERMINAL"
tamanho	22
