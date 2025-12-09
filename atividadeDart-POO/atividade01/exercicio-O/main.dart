// O. Faça um programa que leia três valores inteiros e diferentes e mostre-os em ordem decrescente. 

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
  int valor1;
  int valor2;
  int valor3;

  Calcular({
    required this.valor1,
    required this.valor2,
    required this.valor3,
  });

  void ordemDecrescente(int valor1,int valor2,int valor3){
    List<int> decrescente = [valor1,valor2,valor3];
    
    decrescente.sort();
    List<int> ordemDecrescente = decrescente.reversed.toList();

    print(ordemDecrescente);
  }
}



void main() {
  Validacao v = Validacao();
  print("="*70);
  int n1 = v.verificarNota("Insira o 1º valor: ");
  int n2 = v.verificarNota("Insira o 2º valor: ");
  int n3 = v.verificarNota("Insira o 3º valor: ");

  Calcular cM = Calcular(
    valor1: n1,
    valor2: n2,
    valor3: n3,
  );

  cM.ordemDecrescente(n1,n2,n3);
}
