// B - Fatorial com repetição: Faça um programa que leia 
// um número inteiro positivo e calcule seu fatorial usando um loop.

import "dart:io";

void main(){
    print("="*70);
    print("Fatorial com repetição");
    print("="*70);
  while(true){
    print(" ");
    stdout.write('Digite um valor positivo e inteiro: ');
    String? valor = stdin.readLineSync();

    if (valor == null || valor.isEmpty){
      print('Valor invalido!!');
      continue;
    }

    int? temp = int.tryParse(valor);
    if (temp  == null || temp < 0){
      print('Valor invalido!!');
      continue;
    }

    var entrada =  temp;

    int fatorial = 1;
    for (int i =1; i <= entrada; i++){
      fatorial *= i;
    }
    print('O fatorial de $entrada é $fatorial');

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