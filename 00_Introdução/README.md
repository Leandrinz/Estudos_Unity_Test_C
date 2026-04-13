# 🧪 Instalação do Unity Test (C)

---

## 📌 Introdução

Para utilizarmos essa ferramenta, precisamos seguir alguns passos para que os testes funcionem corretamente.

⚠️ Esses passos podem não funcionar em todos os ambientes.

---

## 🔧 Método 1: Clonando o Repositório do Unity

### 📍 Passo 1: Clonar o repositório

Abra o terminal e execute:

```c
git clone https://github.com/ThrowTheSwitch/Unity.git
```

Isso irá criar uma pasta chamada `Unity` no seu projeto.

![alt text](image.png)

---

### 📍 Passo 2: Configurar o Makefile

Crie um arquivo chamado `Makefile` e adicione o seguinte conteúdo:

```c
CC = gcc
UNITY_SRC = ./Unity/src
CFLAGS = -I$(UNITY_SRC)

PASTA = 01_Asserts
ARQUIVO = Exercicio1

all:
	$(CC) $(CFLAGS) $(UNITY_SRC)/unity.c $(PASTA)/$(ARQUIVO).c -o test.exe
	./test.exe

clean:
	del test.exe
```

---

## ▶️ Executando os testes

No terminal, execute:

```c
make
```

---

## ⚠️ Observações

* Sempre verifique o nome da pasta (`PASTA`)
* Sempre verifique o nome do arquivo (`ARQUIVO`)
* Ajuste os nomes conforme seu projeto

---

