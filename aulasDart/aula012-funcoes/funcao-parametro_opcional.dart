void main(){
  // declaração de variaveis
  int valor1 = 10;
  int valor2 = 20;

  // Chamando a função com os dois parametros
  int resultadoSoma = somaValores (valor1,valor2);
  print('O resultado da soma com dois parametro: $resultadoSoma\n');

  // Chamando a função apenas com o parametro obrigatorio
  int resultadoSomaOpcional = somaValores(valor1);
  print('A soma com apenas um parametro: $resultadoSomaOpcional');
}

// Função com 1 parametro obrigatorio e 1 opcional
// O parametro opcional é colocado entre colchetes [ ]
// e recebe um valor padrão (= 0) caso não informado
int somaValores(int valor1, [int valor2 = 0]){
  print('Valor 1: $valor1');
  print('Valor 2: $valor2');

  // Retorna a soma dos dois valores
  return valor1 + valor2;
}