# Funções - CMock

Agora que vimos a configuração e a estrutura básica do CMock, vamos ver suas principais funções e como usar cada uma delas.

---

## 1) `_Expect()` → Verifica se a função foi chamada

Ela serve para dizer:

> "Eu espero que essa função seja chamada com esses argumentos."

### Exemplo da função
```c
int soma(int a, int b);
```

O mock irá gerar:

```c
soma_Expect(2, 3);
```

O teste irá falhar caso a função `soma` não seja chamada com `(2, 3)`.

### Exemplo de teste
```c
void test_deve_chamar_soma(void) {
    soma_Expect(2, 3);

    minha_funcao();
}
```

---

## 2) `_ExpectAndReturn()` → Espera chamada + força retorno

Essa é a função que mais usamos no dia a dia.

### Exemplo da função
```c
int ler_sensor(void);
```

O mock gera:

```c
ler_sensor_ExpectAndReturn(25);
```

Isso significa:

- Espero que `ler_sensor` seja chamada
- Quando for chamada, retornará `25`

### Exemplo
```c
ler_sensor_ExpectAndReturn(25);

int resultado = minha_funcao();
```

---

## 3) `_Ignore()` → Ignora chamadas

Usado quando não queremos verificar a chamada da função.

### Exemplo
```c
log_evento_Ignore();
```

Significa:

> "Se essa função for chamada, tanto faz."

Muito útil para:

- `log`
- `printf`
- `delay`
- envio de debug

### Exemplo
```c
printf_Ignore();
```

---

## 4) `_IgnoreAndReturn()` → Ignora + retorna valor fixo

Para funções que retornam algo, mas você não quer validar quantas vezes foram chamadas.

### Exemplo
```c
sensor_ligado_IgnoreAndReturn(1);
```

Toda vez que chamar:

```c
sensor_ligado();
```

vai retornar `1`.

---

## 5) `_ExpectAnyArgs()` → Não importa os argumentos

A função deve ser chamada, mas os argumentos não serão validados.

### Exemplo
```c
enviar_dados_ExpectAnyArgs();
```

Significa:

> "A função deve ser chamada, mas não me importo com os argumentos."

---

## 6) `_ExpectAnyArgsAndReturn()` → Qualquer argumento + retorno

Mesma ideia da anterior, mas com retorno.

### Exemplo
```c
ler_porta_ExpectAnyArgsAndReturn(1);
```

Ou seja:

- a função deve ser chamada
- os argumentos não importam
- retornará `1`

---

## 7) `_IgnoreArg_nomeParametro()` → Ignora apenas um argumento

Usado quando queremos validar apenas alguns parâmetros.

### Exemplo da função
```c
dividir(int a, int b, int* resultado);
```

Queremos validar `a` e `b`, mas não o ponteiro.

```c
dividir_ExpectAndReturn(10, 2, NULL, 1);
dividir_IgnoreArg_resultado();
```

Ou seja:

- valida os dois primeiros argumentos
- ignora o ponteiro `resultado`

---

## 8) `_ReturnThruPtr_nome()` → Escrever em ponteiro

Essa é um pouco mais avançada e muito útil.

Se a função preenche um ponteiro:

```c
#include <stdbool.h>

bool ler_valor(int *valor);
```

Podemos fazer:

```c
int esperado = 42;

ler_valor_ExpectAndReturn(NULL, true);
ler_valor_IgnoreArg_valor();
ler_valor_ReturnThruPtr_valor(&esperado);
```

Quando a função é chamada, o mock escreve `42` no ponteiro.

Isso simula:

```c
*valor = 42;
```

---

Com isso, finalizamos nosso estudo em CMock!!!

# Resumo rápido

| Função | Utilidade |
|---|---|
| `_Expect()` | Verifica chamada com argumentos específicos |
| `_ExpectAndReturn()` | Verifica chamada e define retorno |
| `_Ignore()` | Ignora a chamada |
| `_IgnoreAndReturn()` | Ignora e retorna valor fixo |
| `_ExpectAnyArgs()` | Verifica chamada sem validar argumentos |
| `_ExpectAnyArgsAndReturn()` | Igual acima, com retorno |
| `_IgnoreArg_nome()` | Ignora apenas um parâmetro |
| `_ReturnThruPtr_nome()` | Escreve valor em ponteiro |
