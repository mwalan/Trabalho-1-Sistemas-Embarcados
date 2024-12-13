segment code
..start:
;Inicializa registradores
    	MOV		AX,data
    	MOV 	DS,AX
    	MOV 	AX,stack
    	MOV 	SS,AX
    	MOV 	SP,stacktop

;Salvar modo corrente de video(vendo como está o modo de video da maquina)
        MOV  	AH,0Fh
    	INT  	10h
    	MOV  	[modo_anterior],AL   

;Alterar modo de video para gráfico 640x480 16 cores
    	MOV     	AL,12h
   		MOV     	AH,0
    	INT     	10h
		

	;problema sendo causado por estar usando CALL NEAR, procurar como usar CALL FAR
;Desenhar Retas do campo
		;reta superior
		MOV		byte[cor],branco_intenso	;antenas
		MOV		AX,40	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,400 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,600	;fim da posicao vertical
		PUSH	AX
		MOV		AX,400 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferior
		MOV		byte[cor],branco_intenso	;antenas
		MOV		AX,40	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,40 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,600	;fim da posicao vertical
		PUSH	AX
		MOV		AX,40 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;Retangulo 1 da esquerda
		;reta superior do retangulo
		MOV		byte[cor],vermelho	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,400 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,400 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferio do retangulo
		MOV		byte[cor],vermelho	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,332 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,332 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da esquerda do retangulo
		MOV		byte[cor],vermelho	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,400 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,20	;fim da posicao vertical
		PUSH	AX
		MOV		AX,332 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da direita do retangulo
		MOV		byte[cor],vermelho	;antenas
		MOV		AX,30	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,400 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,332 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;retanglo 2 da esquerda
		;reta superior do retangulo
		MOV		byte[cor],amarelo	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,327 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,327 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferio do retangulo
		MOV		byte[cor],amarelo	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,259 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,259 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da esquerda do retangulo
		MOV		byte[cor],amarelo	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,327 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,20	;fim da posicao vertical
		PUSH	AX
		MOV		AX,259 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da direita do retangulo
		MOV		byte[cor],amarelo	;antenas
		MOV		AX,30	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,327 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,259 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;retangulo 3 da esquerda
		;reta superior do retangulo
		MOV		byte[cor],verde_claro	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,254 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,254 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferio do retangulo
		MOV		byte[cor],verde_claro	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,186 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,186 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da esquerda do retangulo
		MOV		byte[cor],verde_claro	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,254 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,20	;fim da posicao vertical
		PUSH	AX
		MOV		AX,186 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da direita do retangulo
		MOV		byte[cor],verde_claro	;antenas
		MOV		AX,30	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,254 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,186 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;retangulo 4 da esquerda
		;reta superior do retangulo
		MOV		byte[cor],azul_claro	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,181 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,181 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferio do retangulo
		MOV		byte[cor],azul_claro	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,113 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,113 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da esquerda do retangulo
		MOV		byte[cor],azul_claro	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,181 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,20	;fim da posicao vertical
		PUSH	AX
		MOV		AX,113 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da direita do retangulo
		MOV		byte[cor],azul_claro	;antenas
		MOV		AX,30	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,181 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,113 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;retangulo 5 da esquerda
		;reta superior do retangulo
		MOV		byte[cor],azul	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,108 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,108 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferio do retangulo
		MOV		byte[cor],azul	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,40 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,40 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da esquerda do retangulo
		MOV		byte[cor],azul	;antenas
		MOV		AX,20	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,108 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,20	;fim da posicao vertical
		PUSH	AX
		MOV		AX,40 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da direita do retangulo
		MOV		byte[cor],azul	;antenas
		MOV		AX,30	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,108 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,30	;fim da posicao vertical
		PUSH	AX
		MOV		AX,40 ; fim da posicao vertical
		PUSH	AX
		CALL	line


;retangulo 1 da direita
		;reta superior do retangulo
		MOV		byte[cor],vermelho	;antenas
		MOV		AX,620	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,400 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,610	;fim da posicao vertical
		PUSH	AX
		MOV		AX,400 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferio do retangulo
		MOV		byte[cor],vermelho	;antenas
		MOV		AX,620	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,332 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,610	;fim da posicao vertical
		PUSH	AX
		MOV		AX,332 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da esquerda do retangulo
		MOV		byte[cor],vermelho	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,400 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,610	;fim da posicao vertical
		PUSH	AX
		MOV		AX,332 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da direita do retangulo
		MOV		byte[cor],vermelho	;antenas
		MOV		AX,620	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,400 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,332 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;retangulo 2 da direita
		;reta superior do retangulo
		MOV		byte[cor],amarelo	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,327 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,327 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferio do retangulo
		MOV		byte[cor],amarelo	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,259 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,259 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da esquerda do retangulo
		MOV		byte[cor],amarelo	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,327 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,610	;fim da posicao vertical
		PUSH	AX
		MOV		AX,259 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da direita do retangulo
		MOV		byte[cor],amarelo	;antenas
		MOV		AX,620	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,327 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,259 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;retangulo 3 da drieita
		;reta superior do retangulo
		MOV		byte[cor],verde_claro	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,254 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,254 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferio do retangulo
		MOV		byte[cor],verde_claro	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,186 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,186 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da esquerda do retangulo
		MOV		byte[cor],verde_claro	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,254 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,610	;fim da posicao vertical
		PUSH	AX
		MOV		AX,186 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da direita do retangulo
		MOV		byte[cor],verde_claro	;antenas
		MOV		AX,620	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,254 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,186 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;retangulo 4 da direita
		;reta superior do retangulo
		MOV		byte[cor],azul_claro	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,181 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,181 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferio do retangulo
		MOV		byte[cor],azul_claro	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,113 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,113 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da esquerda do retangulo
		MOV		byte[cor],azul_claro	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,181 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,610	;fim da posicao vertical
		PUSH	AX
		MOV		AX,113 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da direita do retangulo
		MOV		byte[cor],azul_claro	;antenas
		MOV		AX,620	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,181 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,113 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;retangulo 5 da direita
		;reta superior do retangulo
		MOV		byte[cor],azul	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,108 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,108 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferio do retangulo
		MOV		byte[cor],azul	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,40 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,620	;fim da posicao vertical
		PUSH	AX
		MOV		AX,40 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da esquerda do retangulo
		MOV		byte[cor],azul	;antenas
		MOV		AX,610	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,108 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,610	;fim da posicao vertical
		PUSH	AX
		MOV		AX,40 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta da direita do retangulo
		MOV		byte[cor],azul	;antenas
		MOV		AX,620	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,108 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,0	;fim da posicao vertical
		PUSH	AX
		MOV		AX,40 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;desenhar retas da raquete da esquerda 
		;reta superior
		MOV		byte[cor],verde	;antenas
		MOV		AX,40	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,248 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,60	;fim da posicao horizontal
		PUSH	AX
		MOV		AX,248 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferior 
		MOV		byte[cor],verde	;antenas
		MOV		AX,40	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,180 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,60	;fim da posicao horizontal
		PUSH	AX
		MOV		AX,180 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta esquerda 
		MOV		byte[cor],verde	;antenas
		MOV		AX,40	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,180 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,40	;fim da posicao horizontal
		PUSH	AX
		MOV		AX,248 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta direita 
		MOV		byte[cor],verde	;antenas
		MOV		AX,60	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,180 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,60	;fim da posicao horizontal
		PUSH	AX
		MOV		AX,248 ; fim da posicao vertical
		PUSH	AX
		CALL	line


;desenhar retas da raquete da direita 
		;reta superior
		MOV		byte[cor],verde	;antenas
		MOV		AX,600	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,248 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,580	;fim da posicao horizontal
		PUSH	AX
		MOV		AX,248 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta inferior 
		MOV		byte[cor],verde	;antenas
		MOV		AX,600	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,180 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,580	;fim da posicao horizontal
		PUSH	AX
		MOV		AX,180 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta esquerda 
		MOV		byte[cor],verde	;antenas
		MOV		AX,600	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,180 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,600	;fim da posicao horizontal
		PUSH	AX
		MOV		AX,248 ; fim da posicao vertical
		PUSH	AX
		CALL	line

		;reta direita 
		MOV		byte[cor],verde	;antenas
		MOV		AX,580	;inicio da posicao horizontal
		PUSH	AX
		MOV		AX,180 ;inicio da posicao vertical
		PUSH	AX
		MOV		AX,580	;fim da posicao horizontal
		PUSH	AX
		MOV		AX,248 ; fim da posicao vertical
		PUSH	AX
		CALL	line

;desenha a bola(full_circle)
		MOV		byte[cor],vermelho	;circulos vermelhos
		MOV		AX,350  ;posicao x
		PUSH	AX
		MOV		AX,190	;posica y
		PUSH	AX 
		MOV		AX,20	;tam do raio
		PUSH	AX
		CALL	full_circle

;para a animacao da bola andando sempre em um angulo de 45 graus sera usado sempre a ideia de acresimo ou decresimo de uma unidade
;das coordenadas x e y, por exemplo para ir para cima e direita adiciona 1 em x e y, para baixo e para direita adiciona um em x 
;e decresce 1 em y, para esquerda e pra cima decresce 1 de x e acrescenta 1 em y e para esquerda e baixo decresce 1 de x e y

;-----------------------------------------------------------------------------
;função plot_xy
; Parametros:
;	PUSH x; PUSH y; CALL plot_xy;  (x<639, y<479)
; 	cor definida na variavel cor
plot_xy:
		PUSH	BP
		MOV		BP,SP
		PUSHf
		PUSH 	AX
		PUSH 	BX
		PUSH	CX
		PUSH	DX
		PUSH	SI
		PUSH	DI
	    MOV     AH,0Ch
	    MOV     AL,[cor]
	    MOV     BH,0
	    MOV     DX,479
		SUB		DX,[BP+4]
	    MOV     CX,[BP+6]
	    INT     10h
		POP		DI
		POP		SI
		POP		DX
		POP		CX
		POP		BX
		POP		AX
		POPf
		POP		BP
		RET		4
;-----------------------------------------------------------------------------
;função full_circle
; Parametros:
;	PUSH xc; PUSH yc; PUSH r; CALL full_circle;  (xc+r<639,yc+r<479)e(xc-r>0,yc-r>0)
; 	cor definida na variavel cor					  
full_circle:
	PUSH 	BP
	MOV	 	BP,SP
	PUSHf                        ;coloca os flags na pilha
	PUSH 	AX
	PUSH 	BX
	PUSH	CX
	PUSH	DX
	PUSH	SI
	PUSH	DI

	MOV		AX,[BP+8]    		;resgata xc
	MOV		BX,[BP+6]    		;resgata yc
	MOV		CX,[BP+4]    		;resgata r
	
	MOV		SI,BX
	SUB		SI,CX
	PUSH    AX					;coloca xc na pilha			
	PUSH	SI					;coloca yc-r na pilha
	MOV		SI,BX
	ADD		SI,CX
	PUSH	AX					;coloca xc na pilha
	PUSH	SI					;coloca yc+r na pilha
	CALL line
		
	MOV		DI,CX
	SUB		DI,1	 			;DI = r-1
	MOV		DX,0  				;DX será a variável x. CX é a variavel y
	
;aqui em cima a lógica foi invertida, 1-r => r-1 e as comparações passaram a ser
;JL => JG, assimm garante valores positivos para d

stay_full:						;LOOP
	MOV		SI,DI
	CMP		SI,0
	JG		inf_full       		;caso d for menor que 0, seleciona pixel superior (não  salta)
	MOV		SI,DX				;o JL é importante porque trata-se de conta com sinal
	SAL		SI,1				;multiplica por doi (shift arithmetic left)
	ADD		SI,3
	ADD		DI,SI     			;nesse ponto d = d+2*DX+3
	INC		DX					;Incrementa DX
	JMP		plotar_full
inf_full:	
	MOV		SI,DX
	SUB		SI,CX  				;faz x - y (DX-CX), e salva em DI 
	SAL		SI,1
	ADD		SI,5
	ADD		DI,SI				;nesse ponto d=d+2*(DX-CX)+5
	INC		DX					;Incrementa x (DX)
	DEC		CX					;Decrementa y (CX)
	
plotar_full:	
	MOV		SI,AX
	ADD		SI,CX
	PUSH	SI					;coloca a abcisa y+xc na pilha			
	MOV		SI,BX
	SUB		SI,DX
	PUSH    SI					;coloca a ordenada yc-x na pilha
	MOV		SI,AX
	ADD		SI,CX
	PUSH	SI					;coloca a abcisa y+xc na pilha	
	MOV		SI,BX
	ADD		SI,DX
	PUSH    SI					;coloca a ordenada yc+x na pilha	
	CALL 	line
	
	MOV		SI,AX
	ADD		SI,DX
	PUSH	SI					;coloca a abcisa xc+x na pilha			
	MOV		SI,BX
	SUB		SI,CX
	PUSH    SI					;coloca a ordenada yc-y na pilha
	MOV		SI,AX
	ADD		SI,DX
	PUSH	SI					;coloca a abcisa xc+x na pilha	
	MOV		SI,BX
	ADD		SI,CX
	PUSH    SI					;coloca a ordenada yc+y na pilha	
	CALL	line
	
	MOV		SI,AX
	SUB		SI,DX
	PUSH	SI					;coloca a abcisa xc-x na pilha			
	MOV		SI,BX
	SUB		SI,CX
	PUSH    SI					;coloca a ordenada yc-y na pilha
	MOV		SI,AX
	SUB		SI,DX
	PUSH	SI					;coloca a abcisa xc-x na pilha	
	MOV		SI,BX
	ADD		SI,CX
	PUSH    SI					;coloca a ordenada yc+y na pilha	
	CALL	line
	
	MOV		SI,AX
	SUB		SI,CX
	PUSH	SI					;coloca a abcisa xc-y na pilha			
	MOV		SI,BX
	SUB		SI,DX
	PUSH    SI					;coloca a ordenada yc-x na pilha
	MOV		SI,AX
	SUB		SI,CX
	PUSH	SI					;coloca a abcisa xc-y na pilha	
	MOV		SI,BX
	ADD		SI,DX
	PUSH    SI					;coloca a ordenada yc+x na pilha	
	CALL	line
	
	CMP		CX,DX
	JB		fim_full_circle  	;se CX (y) está abaixo de DX (x), termina     
	JMP		stay_full			;se CX (y) está acima de DX (x), continua no LOOP
	
fim_full_circle:
	POP		DI
	POP		SI
	POP		DX
	POP		CX
	POP		BX
	POP		AX
	POPf
	POP		BP
	RET		6
;-----------------------------------------------------------------------------
;função line
; Parametros:
;	PUSH x1; PUSH y1; PUSH x2; PUSH y2; CALL line;  (x<639, y<479)
line:
		PUSH	BP
		MOV		BP,SP
		PUSHf             		;coloca os flags na pilha
		PUSH 	AX
		PUSH 	BX
		PUSH	CX
		PUSH	DX
		PUSH	SI
		PUSH	DI
		MOV		AX,[BP+10]   	;resgata os vALores das coordenadas
		MOV		BX,[BP+8]    	;resgata os vALores das coordenadas
		MOV		CX,[BP+6]    	;resgata os vALores das coordenadas
		MOV		DX,[BP+4]    	;resgata os vALores das coordenadas
		CMP		AX,CX
		JE		line2
		JB		line1
		XCHG	AX,CX
		XCHG	BX,DX
		JMP		line1
line2:							;deltax = 0
		CMP		BX,DX  			;Subtrai DX de BX
		JB		line3
		XCHG	BX,DX        	;troca os valores de BX e DX entre eles
line3:							;DX > BX
		PUSH	AX
		PUSH	BX
		CALL 	plot_xy
		CMP		BX,DX
		JNE		line31
		JMP		fim_line
line31:	INC		BX
		JMP		line3
;deltAX <>0
line1:
;Comparar módulos de deltax e deltay sabendo que CX>AX
	; CX > AX
		PUSH	CX
		SUB		CX,AX
		MOV		[deltAX],CX
		POP		CX
		PUSH	DX
		SUB		DX,BX
		JA		line32
		NEG		DX
line32:		
		MOV		[deltay],DX
		POP		DX

		PUSH	AX
		MOV		AX,[deltAX]
		CMP		AX,[deltay]
		POP		AX
		JB		line5
; CX > AX e deltAX>deltay
		PUSH	CX
		SUB		CX,AX
		MOV		[deltAX],CX
		POP		CX
		PUSH	DX
		SUB		DX,BX
		MOV		[deltay],DX
		POP		DX

		MOV		SI,AX
line4:
		PUSH	AX
		PUSH	DX
		PUSH	SI
		SUB		SI,AX	;(x-x1)
		MOV		AX,[deltay]
		IMUL	SI
		MOV		SI,[deltAX]		;arredondar
		SHR		SI,1
;Se numerador (DX)>0 soma se <0 Subtrai
		CMP		DX,0
		JL		ar1
		ADD		AX,SI
		ADC		DX,0
		JMP		arc1
ar1:	SUB		AX,SI
		SBB		DX,0
arc1:
		IDIV	word [deltAX]
		ADD		AX,BX
		POP		SI
		PUSH	SI
		PUSH	AX
		CALL	plot_xy
		POP		DX
		POP		AX
		CMP		SI,CX
		JE		fim_line
		INC		SI
		JMP		line4

line5:	CMP		BX,DX
		JB 		line7
		XCHG	AX,CX
		XCHG	BX,DX
line7:
		PUSH	CX
		SUB		CX,AX
		MOV		[deltAX],CX
		POP		CX
		PUSH	DX
		SUB		DX,BX
		MOV		[deltay],DX
		POP		DX

		MOV		SI,BX
line6:
		PUSH	DX
		PUSH	SI
		PUSH	AX
		SUB		SI,BX	;(y-y1)
		MOV		AX,[deltAX]
		IMUL	SI
		MOV		SI,[deltay]		;arredondar
		SHR		SI,1
;Se numerador (DX)>0 soma se <0 subtrai
		CMP		DX,0
		JL		ar2
		ADD		AX,SI
		ADC		DX,0
		JMP		arc2
ar2:	SUB		AX,SI
		SBB		DX,0
arc2:
		IDIV	word [deltay]
		MOV		DI,AX
		POP		AX
		ADD		DI,AX
		POP		SI
		PUSH	DI
		PUSH	SI
		CALL	plot_xy
		POP		DX
		CMP		SI,DX
		JE		fim_line
		INC		SI
		JMP		line6

fim_line:
		POP		DI
		POP		SI
		POP		DX
		POP		CX
		POP		BX
		POP		AX
		POPf
		POP		BP
		RET		8
;*******************************************************************


;*******************************************************************
segment data

cor		db		branco_intenso
							; I R G B COR
pRETo			equ		0	; 0 0 0 0 pRETo
azul			equ		1	; 0 0 0 1 azul
verde			equ		2	; 0 0 1 0 verde
cyan			equ		3	; 0 0 1 1 cyan
vermelho		equ		4	; 0 1 0 0 vermelho
magenta			equ		5	; 0 1 0 1 magenta
marrom			equ		6	; 0 1 1 0 marrom
branco			equ		7	; 0 1 1 1 branco
cinza			equ		8	; 1 0 0 0 cinza
azul_claro		equ		9	; 1 0 0 1 azul claro
verde_claro		equ		10	; 1 0 1 0 verde claro
cyan_claro		equ		11	; 1 0 1 1 cyan claro
rosa			equ		12	; 1 1 0 0 rosa
magenta_claro	equ		13	; 1 1 0 1 magenta claro
amarelo			equ		14	; 1 1 1 0 amarelo
branco_intenso	equ		15	; 1 1 1 1 branco INTenso

modo_anterior	db		0
linha   		dw  	0
coluna  		dw  	0
deltAX			dw		0
deltay			dw		0	
mens    		db  	'Funcao Grafica'
;*************************************************************************
segment stack stack
	resb	512
stacktop: