import 'dart:io';
void main() {
  while (true) {
    print('/' * 70);
    stdout.write("Entre com o 1 valor: ");
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

    stdout.write("Entre com o 2 valor: ");
    String? entrada2 = stdin.readLineSync();

    if (entrada2 == null || entrada2.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp2 = int.tryParse(entrada2);
    if (temp2 == null) {
      print("Digite um valor válido.");
      continue;
    }

    var A = temp1;
    var B = temp2;

    if (A == B){
      var C = A + B;
      print("Soma dos valores $A + $B = $C");
    }else{
      var C = A * B;
      print("Multiplicação dos valores $A x $B = $C");
    }

    stdout.write("\nPressione ENTER para continuar...");
    stdin.readLineSync();
  }
}
