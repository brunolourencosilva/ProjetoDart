//  J - Contagem regressiva: Faça um programa que receba um 
// número inteiro positivo e faça uma contagem regressiva até zero, imprimindo cada número.

import 'dart:io';

void main(){
  print('='*70);
  print('Contagem regressiva:');
  print('='*70);

  while(true){
    print('');

    stdout.write('Informe um valor inteiro e positivo: ');
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

    int? entrada = temp1;

    for(int i = entrada; i != 0; i--){
      print('$i');
    };

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