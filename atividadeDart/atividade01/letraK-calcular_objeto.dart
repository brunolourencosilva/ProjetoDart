import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    // limpa a tela
    print('\x1B[2J\x1B[0;0H');

    print('/' * 60);
    print("Escolha a figura geométrica para calcular a área:");
    print("1 - Quadrado");
    print("2 - Retângulo");
    print("3 - Triângulo");
    print("4 - Círculo");
    print("5 - Trapézio");
    print("0 - Sair");

    stdout.write("\nOpção: ");
    String? opcao = stdin.readLineSync();

    if (opcao == '0') {
      print("\nEncerrando programa...");
      break;
    }

    if (opcao == '1') {
      stdout.write("\nDigite o lado: ");
      double? lado = double.tryParse(stdin.readLineSync() ?? '');
      if (lado == null || lado <= 0) {
        print("\nValor inválido.");
      } else {
        print("\nÁrea do quadrado: ${(lado * lado).toStringAsFixed(2)}");
      }
    }

    else if (opcao == '2') {
      stdout.write("\nBase: ");
      double? base = double.tryParse(stdin.readLineSync() ?? '');
      stdout.write("Altura: ");
      double? altura = double.tryParse(stdin.readLineSync() ?? '');
      if (base == null || altura == null || base <= 0 || altura <= 0) {
        print("\nValores inválidos.");
      } else {
        print("\nÁrea do retângulo: ${(base * altura).toStringAsFixed(2)}");
      }
    }

    else if (opcao == '3') {
      stdout.write("\nBase: ");
      double? base = double.tryParse(stdin.readLineSync() ?? '');
      stdout.write("Altura: ");
      double? altura = double.tryParse(stdin.readLineSync() ?? '');
      if (base == null || altura == null || base <= 0 || altura <= 0) {
        print("\nValores inválidos.");
      } else {
        print("\nÁrea do triângulo: ${((base * altura) / 2).toStringAsFixed(2)}");
      }
    }

    else if (opcao == '4') {
      stdout.write("\nRaio: ");
      double? raio = double.tryParse(stdin.readLineSync() ?? '');
      if (raio == null || raio <= 0) {
        print("\nValor inválido.");
      } else {
        print("\nÁrea do círculo: ${(pi * pow(raio, 2)).toStringAsFixed(2)}");
      }
    }

    else if (opcao == '5') {
      stdout.write("\nBase maior: ");
      double? baseMaior = double.tryParse(stdin.readLineSync() ?? '');
      stdout.write("Base menor: ");
      double? baseMenor = double.tryParse(stdin.readLineSync() ?? '');
      stdout.write("Altura: ");
      double? altura = double.tryParse(stdin.readLineSync() ?? '');
      if (baseMaior == null || baseMenor == null || altura == null ||
          baseMaior <= 0 || baseMenor <= 0 || altura <= 0) {
        print("\nValores inválidos.");
      } else {
        double area = ((baseMaior + baseMenor) * altura) / 2;
        print("\nÁrea do trapézio: ${area.toStringAsFixed(2)}");
      }
    }

    else {
      print("\nOpção inválida.");
    }

    stdout.write("\nPressione ENTER para continuar...");
    stdin.readLineSync();
  }
}
