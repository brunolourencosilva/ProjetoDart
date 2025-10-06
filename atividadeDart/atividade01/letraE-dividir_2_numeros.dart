import 'dart:io';

void main() {
  while (true) {
    // Primeira entrada
    print('//'*56);
    stdout.write("Entre com o primeiro valor: ");
    String? entrada1 = stdin.readLineSync();

    if (entrada1 == null || entrada1.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp1 = int.tryParse(entrada1);
    if (temp1 == null) {
      print("Digite um valor válido.");
      continue;
    }

    // Segunda entrada
    stdout.write("Entre com o segundo valor: ");
    String? entrada2 = stdin.readLineSync();

    if (entrada2 == null || entrada2.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp2 = int.tryParse(entrada2);
    if (temp2 == null || temp2 == 0) {
      print("Digite um valor válido.");
      continue;
    }

    var valor1 = temp1;
    var valor2 = temp2;
    var total = valor1 / valor2;
    print('-'*70);
    print('Resultado: $valor1 / $valor2 = ${total.toStringAsFixed(4)}');
    print('//'*56);
    break;
  }
}

