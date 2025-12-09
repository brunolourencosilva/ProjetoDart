// F. Faça um programa que receba um número qualquer e calcule o dobro e o triplo desse número.

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

class CalcularDobroTriplo {
  int valor1;

  CalcularDobroTriplo({
    required this.valor1,

  });

  int dobro() => valor1 * 2;
  int triplo() => valor1 * 3;

  @override
  String toString() {
    return """
======================== RESULTADOS ========================
Valor original: $valor1 | Triplo: ${triplo()} | Dobro: ${dobro()}
============================================================
""";
  }
}
void main() {
  Validacao v = Validacao();

  int n1 = v.verificarNota("Insira o 1º Valor: ");

  CalcularDobroTriplo cM = CalcularDobroTriplo(
    valor1: n1,
  );

  print(cM);
}
