// C - Soma dos múltiplos: Faça um programa que receba um número inteiro N 
// e calcule a soma de todos os múltiplos de 3 ou 5 menores que N.

import 'dart:io';

void main(){
  print("="*70);
  print("Soma dos múltiplos");
  print("="*70);

  while(true){
    print(" ");
    stdout.write('Digite um valor inteiro e positivo: ');
    String? valor = stdin.readLineSync();

    if (valor == null || valor.isEmpty){
      print('Valor invalido!!');
      continue;
    }

    int? temp = int.tryParse(valor);
    if (temp == null || temp < 0){
      print('Valor invalido!!');
      continue;
    }

    var n = temp;
    int soma = 0;
    print(" ");
    for(int i = 1; i < n;i++){
      if (i % 3 == 0 || i % 5 == 0){
        print('Multiplos: ${i}');
      soma += i;
      }
    }
    print('Soma dos multiplos: $soma');

    while (true) {
      print(" ");
      print("="*70);
      stdout.write('Deseja continuar? (SIM/NAO): ');
      String? escolha = stdin.readLineSync()?.toUpperCase();

      if (escolha == 'SIM') {
        print("="*70);
        break;
      }
      if (escolha == 'NAO') {
        print('Encerrando programa, tchau mundo...');
        print("="*70);
        return;
      }
      print('Erro, valor inválido.');
    }
  }
}
