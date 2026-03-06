.ORIG x3000         ; Diz ao simulador para alocar o programa a partir do endereço x3000 

LD R1, A            ; Carrega o valor de A (5) da memória para o Registrador 1 
LD R2, B            ; Carrega o valor de B (4) para o Registrador 2 (ele será o contador) 
AND R3, R3, #0      ; Zera o Registrador 3 usando operação lógica. R3 guardará o resultado 

LOOP                ; Criamos uma label para o início da repetição
ADD R3, R3, R1      ; Loop: R3 = R3 + R1
ADD R2, R2, #-1     ; Decrementa o contador: R2 = R2 - 1

BRnp LOOP           ; Se R2 ≠ 0, volta para o início do loop.
TRAP x25            ; HALT: Para a execução do processador

A .FILL #5          ; Dado: Multiplicando
B .FILL #4          ; Dado: Multiplicador

.END                ; Diretiva que indica ao montador (assembler) o fim do código 