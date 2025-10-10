import 'dart:io';

void main() {
while(true){
  print('/' * 70);
  // ========= 1 valor =========
    stdout.write("Informe altura de alguem: ");
    String? entrada1 = stdin.readLineSync();

    if (entrada1 == null || entrada1.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    double? temp1 = double.tryParse(entrada1);
    if (temp1 == null || temp1 <= 0) {
      print("Digite um valor válido.");
      continue;
    }

    // ========= 2 valor =========
    stdout.write("Informe o peso de alguem: ");
    String? entrada2 = stdin.readLineSync();

    if (entrada2== null || entrada2.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    double? temp2 = double.tryParse(entrada2);
    if (temp2 == null || temp2 <= 0) {
      print("Digite um valor válido.");
      continue;
    }

    var altura = temp1;
    var peso = temp2;

    var imc = altura * altura / peso;

    if (imc < 18.5) {
    print('Abaixo do peso.');
    } else if (imc < 24.9) {
      print('Peso normal.');
    } else if (imc < 29.9) {
      print('Sobrepeso.');
    } else if (imc < 34.9) {
      print('Obesidade grau I.');
    } else if (imc < 39.9) {
      print('Obesidade grau II.');
    } else {
      print('Obesidade grau III.');
    }
  }
}