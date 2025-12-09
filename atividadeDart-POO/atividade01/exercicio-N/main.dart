// N. Faça um programa que leia uma variável e some 5 caso seja par ou some 8 caso seja ímpar, imprimir o resultado desta operação. 

import 'dart:io';

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
      valor+=5;
      print("="*70);
      print("O valor é PAR, somando mais 5: $valor");
    } else {
      valor+=8;
      print("="*70);
      print("O valor é ÍMPAR, somando main 8: $valor");
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
