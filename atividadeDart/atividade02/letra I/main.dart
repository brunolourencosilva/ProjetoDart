// I - Classificação de ângulos: Faça um programa que receba um ângulo em graus 
// e classifique-o como agudo (<90°), reto (90°), obtuso (>90° e <180°) ou rente (180°).

import 'dart:io';

void main(){
  print('='*70);
  print(' Classificação de ângulos');
  print('='*70);

  while(true){
    print('');

    stdout.write('Informe um valor em grau de um angulo: ');
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

    int? angulo = temp1;

    if (angulo < 90) {
      print('');
      print("Ângulo agudo");
    } else if (angulo == 90) {
      print('');
      print("Ângulo reto");
    } else if (angulo < 180) {
      print('');
      print("Ângulo obtuso");
    } else if (angulo == 180) {
      print('');
      print("Ângulo raso");
    } else if (angulo < 360) {
      print('');
      print("Ângulo côncavo");
    } else if (angulo == 360) {
      print('');
      print("Ângulo completo");
    } else {
      print('');
      print("Ângulo fora do intervalo esperado.");
      continue;
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