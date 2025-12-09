//  L. Faça um algoritmo que leia dois valores inteiros A e B. Se os valores forem iguais deverá somar os dois,
//  caso contrário multiplique A por B. Ao final de qualquer um dos cálculos
//  deve-se atribuir o resultado para uma variável C e mostrar seu conteúdo na tela. 

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
  int b;

  Calcular({
    required this.a,
    required this.b,
  });

  void multiplicarOuSoma(int a,int b){
    if (a == b) {
      int c = a + b;
      print("="*70);
      print("Numeros iguais, soma dos valores são: $c");
    }else if(a != b) {
      int c = a * b;
      print("="*70);
      print("Numeros diferentes, multiplicação dos valores são: $c");
    }else{
      print("="*70);
      print("Valor não se encaixam nos requisitos pedidos");
    }
  }
}



void main() {
  Validacao v = Validacao();
  print("="*70);
  int entrada1 = v.verificarNota("Insira o 1º valor: ");
  int entrada2 = v.verificarNota('Insira o 2º valor: ');

  Calcular cM = Calcular(
    a: entrada1,
    b: entrada2,
  );

  cM.multiplicarOuSoma(entrada1,entrada2);
}
