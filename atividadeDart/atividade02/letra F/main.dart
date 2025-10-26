// F - Conversão de energia: Faça um programa que leia um valor em joules 
// e converta para calorias (1 caloria = 4,184 joules), exibindo os resultados.

import 'dart:io';

void main(){
  print('='*70);
  print('Conversão de energia');
  print('='*70);

  while(true){
    print('');
    stdout.write('Informe um valor em joules: ');
    String? valor1 = stdin.readLineSync();

    if(valor1 == null || valor1.isEmpty){
      print('');
      print('Valor invalido!');
      continue;
    }

    double? temp1 =  double.tryParse(valor1);
    if(temp1 == null || temp1 <= 0){
      print('');
      print('Valor invalido!');
      continue;
    }

    var joules = temp1;
    var caloria = joules / 4.184;
    print('');
    print('Converção de $joules J = ${caloria.toStringAsFixed(1)} cal');
    print('');
    print('.'*70);
    while(true){
      stdout.write('Deseja continuar? (SIM/NAO)');
      String? escolha = stdin.readLineSync()?.toUpperCase();

      if(escolha == null){
        print('');
        print('Valor invalidos!');
        continue;
      }

      if(escolha == "SIM"){
        print('');
        print('Continuando programa');
        print('.'*70);
        break;
      }else if(escolha == "NAO"){
        print('');
        print('Encerrando programa');
        print('.'*70);
        return;
      }else{
        print('');
        print('Valor invalido');
        continue;
      }
    }
  }
}