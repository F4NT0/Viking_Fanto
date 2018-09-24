;	ADICIONANDO UM VALOR EM UM VETOR
; PARA ANDAR POR UM VETOR, VOCÊ CARREGA O VETOR EM UM REGISTRADOR
; DEPOIS FAZ UM CALCULO PARA SABER EXATAMENTE ONDE O VALO DEVE IR
; CALCULO: d = i * ls
; i é a posição desejada e ls é o numero de bytes do tipo desejado
; numeros na arquitetura 16 bits são 2 bytes
; letras na arquitetura 16 bits são 1 byte por letra

; QUEREMOS ADICIONAR O VALOR 3 NA POSIÇÃO 3 DO VETOR
; calculo: d = 3 * 2 (faremos como somas sucessivas)

main
	ldi	r4,vet	
;	calculo do deslocamento:
	add	r4,3
	add	r4,3
;	adicionando o valor 3:
	ldi	r3,3
	stw	r3,r4
;	lendo o valor e imprimindo no terminal o valor
;	devemos carregar o valor para outro registrador
;	depois usamos o comando 0xf002 para imprimir o valor no terminal
	ldw	r2,r4
	ldi	at,0xf002
	stw	r2,at
	hcf

vet	0 0 0 0 0
	
