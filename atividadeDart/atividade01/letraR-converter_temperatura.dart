import 'dart:io';

void main() {
  while (true) {

    print('/' * 60);
    print("Escolha uma opção de converção de temperatura:");
    print("1 - Celsius -> Fahrenheit");
    print("2 - Fahrenheit -> Celsius");
    print("0 - Sair");

    stdout.write("\nOpção: ");
    String? opcao = stdin.readLineSync();

    if (opcao == '0') {
      print("\nEncerrando programa...");
      break;
    }

    if (opcao == '1') {
      stdout.write("\nInforme uma temperatura em celsius: ");
      double? temperatura = double.tryParse(stdin.readLineSync() ?? '');

      if (temperatura == null){
        print("\nValor inválido.");
      } else {
          double resultado = temperatura * 9 / 5 + 32;
          print('$temperatura °C = ${resultado.toStringAsFixed(2)} °F');
      }
    }

    else if (opcao == '2') {
      stdout.write("\nInforme uma temperatura em Fahrenheit: ");
      double? temperatura = double.tryParse(stdin.readLineSync() ?? '');

      if (temperatura == null) {
        print("\nValores inválidos.");
      } else {
        double resultado = (temperatura - 32) * 5 / 9;
        print('$temperatura °F = ${resultado.toStringAsFixed(2)} °C');
      }
    }

    else {
      print("\nOpção inválida.");
    }

    stdout.write("\nPressione ENTER para continuar...");
    stdin.readLineSync();
  }
}
