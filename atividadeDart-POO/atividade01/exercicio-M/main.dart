//  M. Faça um programa para encontrar o dobro de um número caso ele seja positivo
//  e o seu triplo caso seja negativo, imprimindo o resultado. 

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
  int a;

  Calcular({
    required this.a,
  });

  void multiplicarOuSoma(int a){
    if (a >= 0) {
      int c = a * 2;
      print("="*70);
      print("Valor positivo, dobro do valor é: $c");
    }else if(a < 0) {
      int c = a * 3;
      print("="*70);
      print("Valor negativo, triplo do valor é: $c");
    }else{
      print("="*70);
      print("Valor não se encaixam nos requisitos pedidos");
    }
  }
}



void main() {
  Validacao v = Validacao();
  print("="*70);
  int entrada1 = v.verificarNota("Insira um valor: ");

  Calcular cM = Calcular(
    a: entrada1,
  );

  cM.multiplicarOuSoma(entrada1);
}
