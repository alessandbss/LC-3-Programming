.ORIG x3000         ; Diz ao simulador para alocar o programa a partir do endereço x3000 

LD R1, A            ; Carrega o valor de A (5) da memória para o Registrador 1 
LD R2, B            ; Carrega o valor de B (4) para o Registrador 2 (ele será o contador) 
AND R3, R3, #0      ; Zera o Registrador 3 usando operação lógica. R3 guardará o resultado 

.END                ; Diretiva que indica ao montador (assembler) o fim do código 