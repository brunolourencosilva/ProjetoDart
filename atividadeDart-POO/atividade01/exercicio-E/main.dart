// E. Faça um programa que recebe um número inteiro e mostre o sucessor e antecessor.

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

      print("Valor inválido detectado pelo Cogitador. Tente novamente.");
    }
  }
}

class CalcularAntecessorSuscessor {
  int valor1;

  CalcularAntecessorSuscessor({
    required this.valor1,
  });

  int antecessor() => valor1 - 1 ;
  int suscessor() => valor1 + 1 ;

  @override
  String toString() {
    return """
======================== RESULTADOS ========================
Valor Original = $valor1 | Antecessor = ${antecessor()} |Sucessor = ${suscessor()}
============================================================
""";
  }
}
void main() {
  Validacao v = Validacao();

  int n1 = v.verificarNota("Insire um Valor: ");

  CalcularAntecessorSuscessor cM = CalcularAntecessorSuscessor(
    valor1: n1,
  );

  print(cM);
}
