import 'dart:io';

void main() {
  while (true) {
    // Primeira entrada
    print('/'*70);
    stdout.write("Entre com um valor: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp = int.tryParse(entrada);
    if (temp == null) {
      print("Digite um valor válido.");
      continue;
    }

    int valor = temp;
    int sucessor = valor + 1;
    int antecessor = valor - 1;

    print('-'*70);
    print('Valor original: $valor');
    print('Sucessor: $sucessor');
    print('Antecessor: $antecessor');
    print('/'*70);
    break;
  }
}

