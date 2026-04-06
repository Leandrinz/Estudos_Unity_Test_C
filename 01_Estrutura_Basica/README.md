# Estrutura Básica - Unity Test C

### Corpo do arquivo:
```c
#include "unity.h"
#include "arquivo_que_sera_testado.h"

void setUp(void){
    // Arruma cada teste de forma separada
}

void tearDown(void){
    // Limpa a bagunça do teste anterior
}

void test_qualquer(void){
    // Testa alguma coisa
}

void test_qualquer_2(void){
    // Testa outra coisa
}

int main(){
    UNITY_BEGIN(); // "Ligamos" o motor
    RUN_TEST(test_qualquer); // Rodamos nosso teste, passando como parâmetro o próprio teste
    RUN_TEST(test_qualquer_2);

    return UNITY_END(); // Finaliza
}
```

### Ignorando Funções de Teste:
Podemos também ignorar determinados testes de acordo com nossa necessidade
```c
TEST_IGNORE()
```
Ignora o Teste e retorna de forma imediata
```c
TEST_IGNORE_MESSAGE(messagem)
```
Ignora o teste e retorna de forma imediata, colocando a messagem de saída explicando o porque do teste ter sido ignorado.

### Abortando Testes:
Haverão momentos onde um teste entrará em um loop infinito ou precisará interromper os testes. Para isso temos 2 ferramentas para nos auxiliarmos. O primeiro é ```TEST_PROTECT```, que configura e lida com casos de interrupções de emergência. Em segunda temos o ```TEST_ABORT```, podendo ser usado a qualquer momento dentro dos testes para retornar à última ```TEST_PROTECT``` chamada.

```c
TEST_PROTECT()
```
Configura e Captura Macro

```c
TEST_ABORT()
```
Macro de teste de aborto

EXEMPLO:
```c
main(){
    if(TEST_PROTECT()){
        MeuTeste();
    }
}
```
Caso o MeuTeste() chame o ```TEST_ABORT```, o programa vai retornar imediatamente para o ```TEST_PROTECT``` com o valor 0.