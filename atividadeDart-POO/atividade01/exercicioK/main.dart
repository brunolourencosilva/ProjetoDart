// K. Faça um programa para receber um número qualquer e informar na tela se é par ou ímpar. 

import 'dart:io';

import '../../../atividadeDart/atividade05/numero-4/main.dart';

class Validacao {
  int verificarNota(String mensagem) {
    while (true) {
      stdout.write(mensagem);
      String? entrada = stdin.readLineSync();

      int? valorConvertido = int.tryParse(entrada ?? "");

      if (valorConvertido != null) {
        return valorConvertido;
      }

      print("Valor inválido detectado. Tente novamente.");
    }
  }
}

class Calcular {
  int valor;

  Calcular({
    required this.valor,
  });

  void imparPar(int valor){
    if (valor % 2 == 0) {
      print("="*70);
      print("O número $valor é PAR.");
    } else {
      print("="*70);
      print("O número $valor é ÍMPAR.");
    }
  }
}



void main() {
  Validacao v = Validacao();
  print("="*70);
  int n1 = v.verificarNota("Insira um valor: ");

  Calcular cM = Calcular(
    valor: n1,
  );

  cM.imparPar(n1);
}
