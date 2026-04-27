# 🧪 Estudos Unity Test Framework (C)

![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow)
![Language](https://img.shields.io/badge/Language-C-blue)

Este repositório é dedicado ao estudo e prática do **Unity Test**, um framework de testes unitários leve e poderoso para a linguagem C. Aqui, documento meu progresso, exercícios e configurações essenciais para dominar a arte de testar código.

---

## 🎯 Objetivo do Projeto

Muitos desenvolvedores sentem dificuldade ao entrar no mundo de testes, especialmente em linguagens de baixo nível como C. Este projeto visa:

- **Simplificar o aprendizado:** Transformar conceitos complexos em exemplos práticos.
- **Facilitar a configuração:** Servir como um guia de referência para configurar o ambiente (Makefiles, estrutura de pastas).
- **Prática real:** Demonstrar o uso de *assertions* em casos de uso do dia a dia acadêmico e profissional.

---

## 🚀 O que você encontrará aqui?

- [x] **Configuração de Ambiente:** Como integrar o Unity ao seu projeto usando `Makefile`.
- [x] **Testes de Asserts:** Exemplos de `TEST_ASSERT_EQUAL`, `TEST_ASSERT_NULL`, entre outros.
- [x] **Mocking (CMock):** *(Em breve)* Estudos avançados sobre simulação de dependências.

---

## 🛠️ Como executar os testes localmente

Para rodar os testes deste repositório, você precisará de:

- Um compilador C (como `gcc`)
- O `make` instalado

### Passos:

1. Clone o repositório:
   ```bash
   git clone <https://github.com/Leandrinz/Estudos_Unity_Test_C.git>
   ```

2. Acesse a pasta do projeto:
   ```bash
   cd <Estudos_Unity_Test_C>
   ```

3. Execute:
   ```bash
   make
   ```

O executável será gerado e os testes rodarão automaticamente no terminal.

---

## 🏗️ Estrutura do Repositório

```
📦 projeto
 ┣ 📂 Unity/           # Código fonte do framework (referência externa)
 ┣ 📂 01_Asserts/      # Primeiros testes com asserts
 ┣ 📜 Makefile         # Automação da compilação
```

---

## 📚 Documentação Oficial

Para se aprofundar ainda mais e consultar todas as macros disponíveis:

🔗 https://github.com/ThrowTheSwitch/Unity

---
