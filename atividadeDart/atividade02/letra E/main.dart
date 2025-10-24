// E - Tabela de velocidades: Faça um programa que leia o tempo (em segundos)
// e a aceleração constante de um objeto e imprima sua velocidade a cada segundo até o tempo informado.

import 'dart:io';

void main(){
  print('='*70);
  print('Tabela de velocidades');
  print('='*70);

  while(true){
    print('');
    // ===== Primeira entrada =====
    stdout.write('Informe um tempo em segundos: ');
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

    var segundos = temp1;

    // ===== Segundo entrada =====
    stdout.write('Informe uma aceleração: ');
    String? valor2 = stdin.readLineSync();

    if(valor2 == null || valor2.isEmpty){
      print('Valor invalido!');
      continue;
    }

    int? temp2 = int.tryParse(valor2);
    if(temp2 == null || temp2 <= 0){
      print('Valor invalido!');
      continue;
    }

    var aceleracao = temp2;
    print('-'*70);
    for (int i = 1; i <= segundos; i++) {
      int velocidade = aceleracao * i;
      print('Velocidade no segundo $i: $velocidade m/s');
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