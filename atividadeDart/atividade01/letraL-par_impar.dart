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

    if (valor % 2 == 0) {
          print("O número $valor é PAR.");
        } else {
          print("O número $valor é ÍMPAR.");
        }

    stdout.write("\nPressione ENTER para continuar...");
    stdin.readLineSync();
  }
}
