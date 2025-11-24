void main(){
  // Declarar variaveis e passar funções
  double media = calcularMedia(10,10,10,10);
  double divisao = calcularDivisao(10,5);
  // saida
  print('Media Aritmetica');
  print('-'*70); // corrigido para Dart
  print('A media é: $media');
  print('A divisão é: $divisao');
  //Calcular porcentagem
  double percent = 5;
  double valor = 100;
  double percentual = calcularPorcentagem(percent,valor);
  //Saida
  print('$percent% de $valor = $percentual');
}

// Declaração de funções
double calcularMedia(double n1,double n2,double n3,double n4) => (n1 + n2 + n3 + n4) / 4;

// calcula a divisão, com verificação de divisão por zero
double calcularDivisao(double n1, double n2){
  if (n2 == 0){
    print('Erro: Divição por zero!');
    return 0;
  }
  return n1 / n2;
}

// calcula porcentagem (arrow function)
double calcularPorcentagem(double percent,double valor) => (percent * valor) / 100;