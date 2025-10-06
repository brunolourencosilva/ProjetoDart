import 'dart:io';

void main() {
  int valor1;
  int valor2;
  int valor3;
  int valor4;

  // Primeiro valor
  while (true) {
    stdout.write("Entre com a primeira nota: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp = int.tryParse(entrada);
    if (temp == null || temp <= 0) {
      print("Digite um valor válido.");
      continue;
    }

    valor1 = temp;
    break;
  }

  // Segundo valor
  while (true) {
    stdout.write("Entre com a segunda nota: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp = int.tryParse(entrada);
    if (temp == null || temp <= 0) {
      print("Digite um valor válido.");
      continue;
    }

    valor2 = temp;
    break;
  }

  // Terceiro valor
  while (true) {
    stdout.write("Entre com a terceira nota: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp = int.tryParse(entrada);
    if (temp == null || temp <= 0) {
      print("Digite um valor válido.");
      continue;
    }

    valor3 = temp;
    break;
  }

  // Quarto valor
  while (true) {
    stdout.write("Entre com a quarta nota: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp = int.tryParse(entrada);
    if (temp == null || temp <= 0) {
      print("Digite um valor válido.");
      continue;
    }

    valor4 = temp;
    break;
  }

  var total = valor1 + valor2 + valor3 + valor4;
  var media = total / 4;

  print('-' * 70);
  print('Nota 1: $valor1');
  print('Nota 2: $valor2');
  print('Nota 3: $valor3');
  print('Nota 4: $valor4');
  print('Média: $media');
  print('-' * 70);
}
