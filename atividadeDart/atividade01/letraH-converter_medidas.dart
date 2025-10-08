
import 'dart:io';

void main() {
  while (true) {
    // entrada
    print('/'*70);
    stdout.write("Entre com uma medida em CM: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

   double? temp = double.tryParse(entrada);
    if (temp == null || temp <= 0) {
      print("Digite um valor válido.");
      continue;
    }

    var centimetros = temp;
    var metros = centimetros / 100;
    var kilometros = metros / 1000;

    print('-'*70);
    print('Valor original em cm: $centimetros');
    print('Medida em Metros: $metros');
    print('Medida em Kilometros: $kilometros');
    print('/'*70);
    break;
  }
}

