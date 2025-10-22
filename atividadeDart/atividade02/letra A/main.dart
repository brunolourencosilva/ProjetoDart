// A - Números primos no intervalo: Faça um programa que receba 
// dois números inteiros A e B e imprima todos os números primos entre A e B (inclusive).

import "dart:io";
import "dart:math";

void main(){
    print("="*70);
    print("Números primos em um intervalo");
    print("="*70);
  while(true){
    print("");
    // ======= Primeiro valor =======
    stdout.write('Informe com o 1º valor: ');
    String? entrada1 = stdin.readLineSync();

    if (entrada1 == null || entrada1.isEmpty){
      print("Erro,Valor invalido ");
      continue;
    }

    int? temp1 = int.tryParse(entrada1);
    if (temp1 == null || temp1 <= 1 ){
      print("Erro,Valor invalido ");
      continue;
    }

    var A = temp1;

    // ======= Segundo valor =======
    stdout.write('Informe com o 2º valor: ');
    String? entrada2 = stdin.readLineSync();

    if (entrada2 == null || entrada2.isEmpty){
      print("Erro,Valor invalido ");
      continue;
    }

    int? temp2 = int.tryParse(entrada2);
    if (temp2 == null || temp2 <= 1 ){
      print("Erro,Valor invalido ");
      continue;
    }
    var B = temp2;

    if (A > B) {
      print("O primeiro valor deve ser menor que o segundo.");
      continue;
    }


    print("Números primos entre $A e $B:");

    for (int i = A; i <= B; i++) {
      if (i <= 1) continue; // 1 e números negativos não são primos

      bool primo = true;

      for (int d = 2; d <= sqrt(i).toInt(); d++) {
        if (i % d == 0) {
          primo = false;
          break;
        }
      }

      if (primo) {
        print(i);
      }
    }
    while (true) {
      print("="*70);
      stdout.write('Deseja continuar? (SIM/NAO): ');
      String? escolha = stdin.readLineSync()?.toUpperCase();

      if (escolha == 'SIM') {
        break;
      }
      if (escolha == 'NAO') {
        print('Encerrando programa, tchau mundo...');
        print("="*70);
        return; // encerra o programa de vez
      }

      print('Erro, valor inválido.');
    }

  }

}