#include "../Unity/src/unity.h" // Caminho para o src do Unity
#include <stdio.h>

void setUp(void){

}

void tearDown(void){

}

void teste_de_soma_simples(void){
    int resultado = 2 + 2;
    TEST_ASSERT_EQUAL_INT(4, resultado);
    TEST_ASSERT_EQUAL_INT_MESSAGE(11, resultado, "Se voce esta lendo essa mensagem de erro, paradoxalmente, o teste deu certo");
}

void teste_que_vai_falhar(void){
    TEST_ASSERT_NOT_EQUAL(9, 10);
}

int main(){
    UNITY_BEGIN();

    RUN_TEST(teste_de_soma_simples);
    RUN_TEST(teste_que_vai_falhar);

    return UNITY_END();
}