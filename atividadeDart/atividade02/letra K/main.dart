// K - Determinação do maior divisor comum (MDC): Faça um programa que receba 
// dois números inteiros e calcule o MDC usando o algoritmo de Euclides com repetição.
import 'dart:io';

void main() {
  print('=' * 70);
  print('Determinação do maior divisor comum (MDC):');
  print('=' * 70);

  while (true) {
    print('');

    // Entrada do primeiro número
    stdout.write('Informe o primeiro número: ');
    String? valor1 = stdin.readLineSync();

    if (valor1 == null || valor1.isEmpty) {
      print('Valor inválido!');
      continue;
    }

    int? num1 = int.tryParse(valor1);
    if (num1 == null || num1 <= 0) {
      print('Valor inválido!');
      continue;
    }

    // Entrada do segundo número
    stdout.write('Informe o segundo número: ');
    String? valor2 = stdin.readLineSync();

    if (valor2 == null || valor2.isEmpty) {
      print('Valor inválido!');
      continue;
    }

    int? num2 = int.tryParse(valor2);
    if (num2 == null || num2 <= 0) {
      print('Valor inválido!');
      continue;
    }

    // Calculando o MDC
    int a = num1;
    int b = num2;
    print('');
    print('Calculando o MDC de $a e $b:');
    while (b != 0) {
      int resto = a % b;
      print('$a % $b = $resto');
      a = b;
      b = resto;
    }

    print('O MDC de $num1 e $num2 é: $a');
    print('');
    print('.' * 70);

    while (true) {
      stdout.write('Deseja continuar? (SIM/NAO): ');
      String? escolha = stdin.readLineSync()?.toUpperCase();

      if (escolha == null) {
        print('Valor inválido!');
        continue;
      }

      if (escolha == "SIM") {
        print('Continuando programa');
        print('.' * 70);
        break;
      } else if (escolha == "NAO") {
        print('Encerrando programa');
        print('.' * 70);
        return;
      } else {
        print('Valor inválido');
        continue;
      }
    }
  }
}
