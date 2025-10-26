// G - Sequência de potências:Faça um programa que receba um número inteiro N 
// e imprima as potências de 2 de 0 até N (2⁰, 2¹, ..., 2ᴺ). 

import 'dart:io';
import 'dart:math';

void main(){
  print('='*70);
  print('Sequência de potências');
  print('='*70);

  while(true){
    print('');

    stdout.write('Informe um valor de expoente: ');
    String? valor1 = stdin.readLineSync();

    if(valor1 == null || valor1.isEmpty){
      print('Valor invalido!');
      continue;
    }

    int? temp1 = int.tryParse(valor1);
    if(temp1 == null || temp1 <= 0){
      print('Valor invalido!');
      continue;
    }

    int? expoente = temp1;

    print('-'*70);
    for (int i = 0; i <= expoente ; i++) {
      var potencia = pow(2,i);
      print('2 ^ $i = $potencia');
    }

    print('');
    print('.'*70);
    while(true){
      stdout.write('Deseja continuar? (SIM/NAO)');
      String? escolha = stdin.readLineSync()?.toUpperCase();

      if(escolha == null){
        print('Valor invalidos!');
        continue;
      }

      if(escolha == "SIM"){
        print('Continuando programa');
        print('.'*70);
        break;
      }else if(escolha == "NAO"){
        print('Encerrando programa');
        print('.'*70);
        return;
      }else{
        print('Valor invalido');
        continue;
      }
    }
  }
}