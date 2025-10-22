// D - Verificação de ano bissexto: Faça um programa que receba um ano 
// e verifique se ele é bissexto, exibindo a resposta.

import 'dart:io';

void main(){
    print("="*70);
    print("Verificação de ano bissexto");
    print("="*70);
  while(true){
    print(" ");
    stdout.write('Digite um ano: ');
    String? valor = stdin.readLineSync();

    if(valor == null || valor.isEmpty){
      print('Valor invalido!!');
      continue;
    }

    int? temp = int.tryParse(valor);
    if(temp == null || temp <= 0){
      print('Valor invalido !!');
      continue;
    }

    var ano = temp;
    if (ano % 400 == 0){
      print(" ");
      print('O ano $ano é bissexto.');
    } else if(ano % 100 == 0){
      print(" ");
      print('O ano $ano não é bissexto.');
    }else if(ano % 4 == 0){
      print(" ");
      print('O ano $ano é bissexto.');
    }else {
      print(" ");
      print('O ano $ano não é bissexto.');
    }

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