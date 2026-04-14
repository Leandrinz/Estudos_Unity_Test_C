CC = gcc
UNITY_SRC = ./Unity/src
CFLAGS = -I$(UNITY_SRC)

AULA = Treino
# Coloque aqui a Pasta onde está seus arquivos de teste e funções a serem testadas
ARQUIVO_COM_TESTES = TExercicio2
# Coloque o nome do arquivo que contém seus testes
ARQUIVO_COM_FUNCOES = Exercicio2.c
# Coloque o nome do arquivo que contém as funções

all:
	$(CC) $(CFLAGS) $(UNITY_SRC)/unity.c $(AULA)/$(ARQUIVO_COM_TESTES).c $(AULA)/$(ARQUIVO_COM_FUNCOES) -o test.exe
	./test.exe

clean:
	del test.exe