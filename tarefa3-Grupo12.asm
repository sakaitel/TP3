section .data
    ; Mensagens iniciais que a Pessoa 2 vai usar 
    msg_entrada db "Digite o nome do arquivo de entrada: ", 0
    msg_saida db "Digite o nome do arquivo de saida: ", 0

section .bss
    ; Buffers nao inicializados
    buffer_entrada resb 256
    buffer_saida resb 256

section .text
    global _start

_start:
    ; Ponto de entrada do programa principal (Pessoa 2) 
    ; O laco de repeticao principal entrara aqui .

    ; Encerramento do programa
    mov rax, 60         ; sys_exit
    mov rdi, 0          ; codigo de retorno 0
    syscall

; ---------------------------------------------------------
; Funcoes Obrigatorias
; Regra: Parametros passados pela pilha (8 bytes cada).
; Regra: Retorno armazenado no registrador RAX .
; ---------------------------------------------------------

le_string:
    ; Parametros: (char* buffer, int tam_max) 
    ; Puxar parametros da pilha usando RBP
    ret

escreve_string:
    ; Parametros: (char* buffer) 
    ret

abre_arquivo:
    ; Parametros: (char* nome_arquivo, int modo_abertura) 
    ret

fecha_arquivo:
    ; Parametros: (int descritor_arquivo) 
    ret

le_byte_arquivo:
    ; Parametros: (int descritor_arquivo, char* byte_arq) 
    ret

grava_string_arquivo:
    ; Parametros: (int descritor_arquivo, char* buffer) 
    ret

gera_string_hexadecimal:
    ; Parametros: (int valor, char* buffer) 
    ret