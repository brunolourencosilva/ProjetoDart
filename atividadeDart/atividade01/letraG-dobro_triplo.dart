import 'dart:io';

void main() {
  while (true) {
    // entrada
    print('/'*70);
    stdout.write("Entre com um valor: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    double? temp = double.tryParse(entrada);
    if (temp == null) {
      print("Digite um valor válido.");
      continue;
    }

    var valor = temp;
    var dobro = valor * 2;
    var triplo = valor * 3;

    print('-'*70);
    print('Valor original: $valor');
    print('Dobro: $dobro');
    print('Triplo: $triplo');
    print('/'*70);
    break;
  }
}

