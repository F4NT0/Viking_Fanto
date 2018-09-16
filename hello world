;	(LDI)Load Immediate
;	(LDB)Load Byte
;	(STW)Store Word
;	(ADD)add
;	(BNZ)Branch if not equal  zero
;	(HCF)Halt and Catch Fire
	
main
	ldi	r1,0xf000
	ldi	r2,str
loop
	ldb	r3,r2
	stw	r3,r1
	add	r2,1
	bnz	r3,loop
	hcf
var	123
vet	-4	7	3
vet2	0x1234	0x555
str	"MEU SISTEMA OPERACIONAL"

