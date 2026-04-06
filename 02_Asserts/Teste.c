#include "../Unity/src/unity.h" // Caminho para o src do Unity
#include <stdio.h>

void setUp(void){

}

void tearDown(void){

}

void test_soma_errada(void){
    int resultado = 2 + 3;
    TEST_ASSERT_NOT_EQUAL_MESSAGE(5, resultado, "Teste de Mensagem");
}   

int main(){
    UNITY_BEGIN();

    RUN_TEST(test_soma_errada);

    return UNITY_END();
}