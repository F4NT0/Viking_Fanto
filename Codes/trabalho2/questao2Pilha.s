;	QUESTÃO 2 DO TRABALHO 2 DE ORGARC
;	DETERMINAR SE UMA STRING É PALINDROMO
; REGISTRADORES:
;	r1: usado para armazenar o char desejado
;	r2: usado para fazer os testes e armazenar o pop da pilha
;	r3: usado para armazenar os contadores
;	r4: usado para armazenar o string desejado
;	r5: usado para armazenar o tamanho da string
;	r6: usado para armazenar informações de registradores
main
;	CHAMADA DO STRING,DO CONTADOR R3 E DO TAMANHO R5
	ldi	r4,string
	ldi	r3,cont1
	ldi	r5,size
;	LOOP DE ARMAZENAMENTO NA PILHA
loop_pilha
;	soma o valor do contador no registrador da string
	add	r4,r3
;	carrega o caractere no registrador 1
	ldb	r1,r4
;	verifica se o caractere é um espaço em branco
	sub	r2,r1,32
;	se for um espaço em branco ele entra no if
	bez	r2,if
;	armazena o valor de r1 na pilha, subtraindo 2 bytes de sp(r7)
	sub	sp,2
	stw	r1,sp
;	verificação se o contador chegou no mesmo numero do tamanho
	sub	r2,r5,r3
;	se a subtração for igual a zero,ele terminou de armazenar na pilha
;	onde ele vai para a função reset(zera o contador)
	bez	r2,reset
;	se a subtração não for zero,adiciona 1 no registrador 3 e reinicia o loop
	add	r3,1
	bnz	r2,loop_pilha

;	IF CASO SEJA UM ESPAÇO EM BRANCO
if
;	adiciona 1 no registrador 3 
	add	r3,1
;	subtrai r5 de r3 e verifica se o r3 não é igual a r5
	sub	r2,r5,r3
;	se não der zero, ele volta para o loop da pilha
	bnz	r2,loop_pilha
;	se for zero, ele vai para a proxima etapa, chamada loop_teste
	bez	r2,loop_teste

;	RESET DO CONTADOR PARA O LOOP_TESTE
reset
;	colocamos o segundo contador no registrador r3
	ldi	r3,cont2

;	LOOP PARA FAZER OS TESTES DAS LETRAS
loop_teste
;	adicionamos o valor de r3 em r4, posicionando o ponteiro para o inicio
	add	r4,r3
;	armazenamos o char no registrador 1
	ldb	r1,r4
;	subtraimos o r1 por 32 para ver se não é um espaço
	sub	r2,r1,32
;	se for igual a um espaço, ele entra no if2 e pula a posição
	bez	r2,if_2
;	agora iremos carregar o primeiro caractere que foi armazenado na pilha
	ldw	r2,sp
	add	sp,2
;	carregamos esse caractere no registrador 6
	ldb	r6,r2
;	agora verificamos se as duas letras são compativeis entre si
	sub	r2,r1,r6
;	se a subtração não for zero, ele irá enviar o programa para a função end
	bnz	r2,end
;	se for zero o programa continua, onde agora verificamos o tamanho do cont
	sub	r2,r5,r3
;	se for igual a zero, significa que andamos por toda a string
;	encerrando assim a função e iniciando a função end_palin
	bez	r2,end_palin
;	se não for igual a zero, incrementamos o contador e reiniciamos o loop
	add	r3,1
	bnz	r2,loop_teste

;	IF_2 PARA VERIFICAR O ESPAÇO NO TESTE
if_2
	add	r3,1
	sub	r2,r5,r3
	bnz	r2,loop_teste

;	FUNÇÃO END_PALIN, CASO OS CARACTERES SEJAM COMPATIVEIS
end_palin
;	caso o programa entre aqui, ele irá entregar no terminal 1
;	significando que ele é palindromo
	ldi	r2,1
	stw	r2,0xf002
	hcf
;	FUNÇÃO END, CASO OS CARACTERES NÃO SEJAM COMPATIVEIS
end
;	caso o programa entre aqui, ele irá entregar no terminal 0
;	significando que ele não é palindromo
	ldi	r2,1
	stw	r2,0xf002
	hcf

string	"anna"
cont1	0
cont2	0
size	4
	 
