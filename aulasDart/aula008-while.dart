import 'dart:io';

void main(){
  // Variavel de controle de laço
  int i = 1;

  // Estrutura de repetição while
  // Enquanto a condição (i <= 5) for verdadeira,
  // o bloco de codigo sera executado.
  while (i <= 5){
    // stdout.write imprime na mesma linha (sem quebra de linha automatica)
    stdout.write('$i ');
    i++;
  }
}