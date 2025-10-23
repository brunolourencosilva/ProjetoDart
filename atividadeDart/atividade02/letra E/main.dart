// E - Tabela de velocidades: Faça um programa que leia o tempo (em segundos)
// e a aceleração constante de um objeto e imprima sua velocidade a cada segundo até o tempo informado.

import 'dart:io';

void main(){
  while(true){
    // ===== Primeira entrada =====
    stdout.write('Informe um tempo em segundos: ');
    String? valor1 = stdin.readLineSync();

    if(valor1 == null || valor1.isEmpty){
      print('Valor invalido!');
    }else{
      int? temp1 = int.tryParse(valor1);
      if(temp1 == null || temp1 <= 0){
        print('Valor invalido!');
      }else{
        var segundos = temp1;
      }
    }

    // ===== Segundo entrada =====
    stdout.write('Informe uma aceleração: ');
    String? valor2 = stdin.readLineSync();

    if(valor2 == null || valor2.isEmpty){
      print('Valor invalido!');
    }else{
      int? temp2 = int.tryParse(valor2);
      if(temp2 == null || temp2 <= 0){
        print('Valor invalido!');
      }else{
        // var aceleracao = temp2;
      }
    }

    for(){}

  }
}