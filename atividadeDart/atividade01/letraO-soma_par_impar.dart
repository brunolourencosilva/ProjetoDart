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
      print("Digite um valor válido.");
      continue;
    }

    var valor = temp;
    var par = valor + 5;
    var impar = valor + 8;

    if (valor % 2 == 0) {
          print("O número $valor é PAR.");
          print("soma: $valor + 5 = $par");
        } else {
          print("O número $valor é ÍMPAR.");
          print("soma: $valor + 8 = $impar");
        }
  }
}
