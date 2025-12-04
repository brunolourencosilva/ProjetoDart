// A. Faça um programa que peça 2 valores. Calcule e imprima a soma, o produto,
// a subtração, a divisão, o resto da divisão e a divisão inteira.

import 'dart:io';

class Calcular {
  double valor1;
  double valor2;

  Calcular({
    required this.valor1,
    required this.valor2,
  });

  double soma() => valor1 + valor2;
  double produto() => valor1 * valor2;
  double subtracao() => valor1 - valor2;
  double divisao() => valor1 / valor2;
  double resto() => valor1 % valor2;
  int divisaoInteira() => valor1 ~/ valor2;

  @override
  String toString() {
  return """
  ================== Resultados ==================\n
  Soma: $valor1 + $valor2 = ${soma()}\n
  Produto: $valor1 x $valor2 = ${produto()}\n
  Subtração: $valor1 - $valor2 = ${subtracao()}\n
  Divisão: $valor1 ÷ $valor2 = ${divisao()}\n
  Resto: $valor1 % $valor2 = ${resto()}\n
  Divisão inteira: $valor1 ~/ $valor2 = ${divisaoInteira()}\n
  ================================================
  """;
  }
}

void main() {
  stdout.write("Insira o primeiro valor: ");
  double v1 = double.parse(stdin.readLineSync()!);

  stdout.write("Insira o segundo valor: ");
  double v2 = double.parse(stdin.readLineSync()!);

  Calcular c = Calcular(valor1: v1, valor2: v2);
  print(c);
}