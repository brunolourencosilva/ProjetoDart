import 'dart:io';

void main(){
  for (int i = 1; i <= 5; i++){
    print(i); // Quebra a linha
  }

  for (int i = 1; i <= 5; i++){
    stdout.write('$i '); //sem quebra de linha
  }
}

/**
 * Neste exemplo, a variavel i é inicializada
 * com o valor 1 antes do inicio do loop.
 * A condição de controle i <= 5 verifica se a 
 * variavel i é menor ou igual a 5. Enquanto
 * essa condição for verdadeira, o bloco de 
 * codigo dentro do loop sera executado.
 * O incremento i++ é executado apos cada iteração,
 * adicionando 1 a variavel i. O resultado desse
 * codigo sera a impressão dos numeros de 
 * 1 e 5 na saida padrão.
 */