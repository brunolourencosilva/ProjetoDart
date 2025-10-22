import 'dart:io';

void main() {
  while (true) {
    print('/' * 70);
    stdout.write("Entre com um valor em real: ");
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

    var real = temp;
    var dolar = real  / 5.70;
    var euro = real  / 6.10;
    var won =  real  / 0.0041;
    print('-' * 70);
    print("valor original: ${real.toStringAsFixed(2)}");
    print("valor em dolar: ${dolar.toStringAsFixed(2)}");
    print("valor em euro: ${euro.toStringAsFixed(2)}");
    print("valor em won: ${won.toStringAsFixed(2)}");
    print('/' * 70);
    break;
  }
}
