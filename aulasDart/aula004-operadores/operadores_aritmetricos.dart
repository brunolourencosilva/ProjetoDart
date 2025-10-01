import 'dart:io';

void main(){
  stdout.write('Entre com valor de A: ');
  int a = int.parse(stdin.readLineSync()!); // Fazendo casting

  stdout.write('Entre com valor de B: ');
  int b = int.parse(stdin.readLineSync()!); // Fazendo casting

  // Operadores de soma
  int soma = a + b;
  // Operador de subrtração
  int subtracao = a - b;
  // Operador de produto
  int produto = a * b;
  // Operador de divisão
  double divisao = a / b;
  // Operador de divisao inteira
  int divInteira = a ~/ b;
  // Operador de resto de divisão
  int restoDivisao = a % b;

  print('-' *70);
  print('A soma de $a + $b = $soma');
  print('A subtração de $a - $b = $subtracao');
  print('A multiplicação de $a x $b = $produto');
  print('A divisao de $a / $b = ${divisao.toStringAsFixed(2)}');
  print('A divisao inteira de $a ~/ $b = $divInteira');
  print('O resto da divisão de $a % $b = $restoDivisao');
  print('-' *70);
}