# Olá, Se vc está vendo esse arquivo e não está entendendo nada, fique tranquilo por que ao final dos estudos, irei fazer uma introdução ao framework do Unity, e lá irei explicar a utilidade desse Makefile. 
# Obs: Se eu tiver terminado e não tiver colocado a introdução do Framework, abra uma ISSUE e me alerte sobre isso, ficarei extremamente grato pela sua colaboração nesse projeto!!!

CC = gcc
UNITY_SRC = ./Unity/src
CFLAGS = -I$(UNITY_SRC)

AULA = 01_Asserts
ARQUIVO = Exercicio1

all:
	$(CC) $(CFLAGS) $(UNITY_SRC)/unity.c $(AULA)/$(ARQUIVO).c -o test.exe
	./test.exe

clean:
	del test.exe