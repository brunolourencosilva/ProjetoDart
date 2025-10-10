import 'dart:io';

void main() {
while(true){
  print('/' * 70);
  print('Entre com valores diferentes');
  print('');
  // ========= 1 valor =========
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

    // ========= 2 valor =========
    stdout.write("Entre com o primeiro valor: ");
    String? entrada2 = stdin.readLineSync();

    if (entrada2== null || entrada2.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp2 = int.tryParse(entrada2);
    if (temp2 == null) {
      print("Digite um valor válido.");
      continue;
    }

    // ========= 3 valor =========
    stdout.write("Entre com o primeiro valor: ");
    String? entrada3 = stdin.readLineSync();

    if (entrada3 == null || entrada3.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp3 = int.tryParse(entrada3);
    if (temp3 == null) {
      print("Digite um valor válido.");
      continue;
    }

    var valor1 = temp1;
    var valor2 = temp2;
    var valor3 = temp3;

    // ordenação manual (decrescente)
    if (valor1 < valor2) {
      var temp = valor1;
      valor1 = valor2;
      valor2 = temp;
    }

    if (valor1 < valor3) {
      var temp = valor1;
      valor1 = valor3;
      valor3 = temp;
    }

    if (valor2 < valor3) {
      var temp = valor2;
      valor2 = valor3;
      valor3 = temp;
    }

    print('Valores em ordem decrescente: $valor1, $valor2, $valor3');
  }
}