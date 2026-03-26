# 🧪 Asserts — Framework Unity (C)

---

## 📌 O que são?

- **Asserts** são métodos usados para verificar se o resultado de um teste é igual ao esperado.

- Em outras palavras:
  > “Eu espero X, o código retornou Y → está correto?”

---

### 🍟 Exemplo intuitivo

- Você cozinha uma batata 🥔  
- **Esperado:** batata macia  
- **Obtido:** batata dura  

➡️ O teste falha, pois o resultado não corresponde ao esperado  

---

## 🧩 Tipos de Asserts

O framework **Unity Test (C)** possui vários tipos de asserts para diferentes situações.

---

### ✅ 1. Booleanos

#### 🔹 `TEST_ASSERT_TRUE(condição)`
- Passa se a condição for **verdadeira**
- Falha se for **falsa**

#### 🔹 `TEST_ASSERT_FALSE(condição)`
- Passa se a condição for **falsa**
- Falha se for **verdadeira**

---

### 🔢 2. Inteiros

#### 🔹 `TEST_ASSERT_EQUAL_INT(esperado, atual)`
- Verifica se dois valores inteiros são iguais

---

#### 📏 Variantes por tamanho

```c
TEST_ASSERT_EQUAL_INT8(expected, actual)   // 8 bits
TEST_ASSERT_EQUAL_INT16(expected, actual)  // 16 bits
TEST_ASSERT_EQUAL_INT32(expected, actual)  // 32 bits
TEST_ASSERT_EQUAL_INT64(expected, actual)  // 64 bits
```

---

#### 🔹 `TEST_ASSERT_INT_WITHIN(delta, esperado, atual)`
- Verifica se o valor está dentro de uma margem de erro

✔️ Útil para:
- cálculos com aproximação
- operações com ponto flutuante

---

### 🔤 3. Strings

#### 🔹 `TEST_ASSERT_EQUAL_STRING(esperada, atual)`
- Compara duas strings completamente

---

#### 🔹 `TEST_ASSERT_EQUAL_STRING_LEN(esperada, atual, tamanho)`
- Compara apenas até um determinado número de caracteres

---

## 💬 Asserts com Mensagens Personalizadas

Você pode adicionar mensagens para facilitar o debug.

---

### 🧠 Como funciona:

- Basta adicionar `_MESSAGE` ao final do assert

---

### ✍️ Exemplo:

```c
TEST_ASSERT_EQUAL_INT_MESSAGE(esperado, atual, "Erro no cálculo da soma");
```

---

### ⚠️ Importante

- A mensagem **só aparece se o teste falhar**
- Se passar → nada é exibido

---

## ✔ Resumo rápido

- Assert = verificação de resultado  
- TRUE/FALSE → condições  
- INT → números  
- STRING → textos  
- WITHIN → margem de erro  
- _MESSAGE → debug mais claro  

---

## 💡 Dica prática

- Sempre pense:
  > "O que eu espero que essa função retorne?"

- Use:
  - `EQUAL` → valores exatos  
  - `WITHIN` → valores aproximados  
  - `STRING` → textos  