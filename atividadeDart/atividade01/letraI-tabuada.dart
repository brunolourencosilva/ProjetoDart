import 'dart:io';

void main() {
  while (true) {
    print('/' * 70);
    stdout.write("Entre com um valor: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp = int.tryParse(entrada);
    if (temp == null) {
      print("Digite um número inteiro válido.");
      continue;
    }

    var valor = temp;
    print('-' * 70);
    print("Tabuada de $valor:");
    print('-' * 70);

    for (int i = 1; i <= 10; i++) {
      print("$valor x $i = ${valor * i}");
    }
    print('/' * 70);
    break;
  }
}
