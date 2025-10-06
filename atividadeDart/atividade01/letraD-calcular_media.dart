import 'dart:io';

int lerValor(String rotulo) {
  while (true) {
    stdout.write("Entre com $rotulo: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? valor = int.tryParse(entrada);
    if (valor == null || valor <= 0) {
      print("Digite um valor válido.");
      continue;
    }

    return valor;
  }
}

void main() {
  int valor1 = lerValor("a primeira nota");
  int valor2 = lerValor("a segunda nota");
  int valor3 = lerValor("a terceira nota");
  int valor4 = lerValor("a quarta nota");

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
