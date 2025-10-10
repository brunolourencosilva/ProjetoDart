import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('/' * 60);
    print("Escolha uma opção:");
    print("1 - Juros simples");
    print("2 - Juros composto");
    print("0 - Sair");

    stdout.write("\nOpção: ");
    String? opcao = stdin.readLineSync();

    if (opcao == '0') {
      print("\nEncerrando programa...");
      break;
    }

    if (opcao == '1') {
      print('-' * 60);
      print('Juros simples');

      stdout.write("\nInforme o capital: ");
      double? C = double.tryParse(stdin.readLineSync() ?? '');

      stdout.write("Informe a taxa de juros (%): ");
      double? i = double.tryParse(stdin.readLineSync() ?? '');

      stdout.write("Informe o tempo: ");
      double? t = double.tryParse(stdin.readLineSync() ?? '');

      if (C == null || i == null || t == null) {
        print("\nValores inválidos.");
      }else if(C <= 0 || t < 0){
        print("Capital e tempo devem ser positivos.");
      }else {
        double J = C * (i / 100) * t;
        double montante = C + J;
        print("Juros: ${J.toStringAsFixed(2)}");
        print("Montante total: ${montante.toStringAsFixed(2)}");
      }
    }

    else if (opcao == '2') {
      print('-' * 60);
      print('Juros composto');

      stdout.write("\nInforme o capital: ");
      double? C = double.tryParse(stdin.readLineSync() ?? '');

      stdout.write("Informe a taxa de juros (%): ");
      double? i = double.tryParse(stdin.readLineSync() ?? '');

      stdout.write("Informe o tempo: ");
      double? t = double.tryParse(stdin.readLineSync() ?? '');

      if (C == null || i == null || t == null) {
        print("\nValores inválidos.");
      } else if(C <= 0 || t < 0){
        print("Capital e tempo devem ser positivos.");
      }else {
        double montante = C * pow(1 + i / 100, t);
        print("Montante total com juros compostos: ${montante.toStringAsFixed(2)}");
      }
    }

    else {
      print("\nOpção inválida.");
    }

    stdout.write("\nPressione ENTER para continuar...");
    stdin.readLineSync();
  }
}
