import 'dart:io';

void main() {
  double? valor1;
  double? valor2;

  while (valor1 == null) {
    stdout.write("Entre com o 1º valor: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    valor1 = double.tryParse(entrada);
    if (valor1 == null) {
      print("Digite um número válido.");
    }
  }

  while (valor2 == null) {
    stdout.write("Entre com o 2º valor: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    valor2 = double.tryParse(entrada);
    if (valor2 == null) {
      print("Digite um número válido.");
      continue;
    }

    if (valor2 == 0) {
      print("segundo valor não pode ser zero (evita divisão por zero).");
      valor2 = null;
    }
  }

  double soma = valor1 + valor2;
  double produto = valor1 * valor2;
  double subtracao = valor1 - valor2;
  double divisao = valor1 / valor2;
  double resto = valor1 % valor2;
  int divisaoInteira = valor1 ~/ valor2;

  print('-' * 70);
  print('$valor1 + $valor2 = $soma');
  print('$valor1 x $valor2 = $produto');
  print('$valor1 - $valor2 = $subtracao');
  print('$valor1 ÷ $valor2 = $divisao');
  print('$valor1 % $valor2 = $resto');
  print('$valor1 // $valor2 = $divisaoInteira');
  print('-' * 70);
}
