// H - Cálculo de velocidade média: Faça um programa que receba as 
// distâncias percorridas a cada intervalo de tempo e calcule a velocidade média total do percurso. 

import 'dart:io';

void main(){
  print('='*70);
  print('Cálculo de velocidade média');
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