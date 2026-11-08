# Decodificador UTF-8 em Assembly

Este projeto é um programa escrito em Assembly NASM para Linux (64 bits) que lê um arquivo de texto codificado em UTF-8 e produz um novo arquivo contendo o código Unicode (code point) de cada caractere, escrito em formato hexadecimal.

## Pré-requisitos
Para compilar e rodar o projeto, você precisará de um ambiente Linux de 64 bits com as seguintes ferramentas instaladas:
* `nasm` (Netwide Assembler)
* `ld` (GNU Linker)
* `make` (Para automação da compilação)

## Como Compilar
O repositório inclui um `Makefile` configurado. Para compilar o programa, abra o terminal na pasta raiz do projeto e digite:

```bash
make
```
Isso irá gerar o executável chamado `tarefa3`. Se precisar limpar os arquivos gerados pela compilação, use:
```bash
make clean
```

## Como Executar
Após compilar, rode o executável:

```bash
./tarefa3
```
O programa pedirá duas informações:
1. O nome do arquivo de entrada (ex: `entradas/teste1_ascii.txt`)
2. O nome do arquivo de saída (ex: `minha_saida.txt`)

## Como Testar
Para garantir que a decodificação está correta, compare o arquivo de saída gerado pelo seu programa com os arquivos de referência fornecidos pelo professor na pasta `saidas_esperadas/`. 

Utilize o comando `diff`:

```bash
diff saidas_esperadas/teste1_ascii_saida.txt minha_saida.txt
```
*Dica: Se o comando `diff` não imprimir nada no terminal, significa que a sua saída está perfeitamente igual à esperada!*

## Estrutura do Repositório
* `tarefa3-Grupo12.asm`: Código-fonte principal em Assembly.
* `Makefile`: Automação da compilação.
* `entradas/`: Arquivos de teste originais (`teste1_ascii.txt`, etc).
* `saidas_esperadas/`: Arquivos com o resultado correto para comparação.
* `README.md`: Arquivo .md que explica o funcionamento do projeto.