// L - Resfriamento de um líquido: Faça um programa que simule 
// o resfriamento de um líquido a partir de uma temperatura inicial 
// até atingir a temperatura ambiente (25°C). A cada segundo, a temperatura diminui 2%.
// Imprima a temperatura a cada segundo.

import 'dart:io';

void main() {
  print('=' * 70);
  print('Resfriamento de um líquido:');
  print('=' * 70);

  while (true) {
    print('');

    stdout.write('Informe uma temperatura: ');
    String? valor1 = stdin.readLineSync();

    if (valor1 == null || valor1.isEmpty) {
      print('Valor inválido!');
      continue;
    }

    double? num1 = double.tryParse(valor1);
    if (num1 == null || num1 <= 0) {
      print('Valor inválido!');
      continue;
    }

    var temperatura = num1;

    print('');
    for (int segundos = 0; temperatura > 25; segundos++) {
      print('Segundos: $segundos - Temperatura: ${temperatura.toStringAsFixed(2)}°C');
      temperatura *= 0.98; // diminui 2%
    }

    print('');
    print('Temperatura final atingiu nivel ambiente: ${temperatura.toStringAsFixed(2)}°C');
    print('.'*70);
    
    while (true) {
      stdout.write('Deseja continuar? (SIM/NAO): ');
      String? escolha = stdin.readLineSync()?.toUpperCase();

      if (escolha == null) {
        print('Valor inválido!');
        continue;
      }

      if (escolha == "SIM") {
        print('Continuando programa');
        print('.' * 70);
        break;
      } else if (escolha == "NAO") {
        print('Encerrando programa');
        print('.' * 70);
        return;
      } else {
        print('Valor inválido');
        continue;
      }
    }
  }
}
