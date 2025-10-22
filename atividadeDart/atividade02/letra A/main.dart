// A - Números primos no intervalo: Faça um programa que receba dois números inteiros A e B e imprima todos os números primos entre A e B (inclusive).

import "dart:io";
import "dart:math";

void main(){
  while(true){
    bool encerrar = true;

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
    while(encerrar){
      stdout.write('Deseja continuar? (SIM/NAO): ');
      String? escolha = stdin.readLineSync();

      if (escolha == null || escolha.isEmpty){
        print("Erro,Valor invalido ");
        continue;
      }

      var escolhaLower = escolha.toUpperCase();

      if (escolhaLower == 'SIM'){
        print('Continuando Programa');
        continue;
      }else if(escolhaLower == 'NAO'){
        print('Encerrando programa,tchau mundo...');
        encerrar = false;
        break;
      }else{
        print('Erro,valore invalido');
        continue;
      }
    }
    if (encerrar == false){
      break;
    }
  }

}