// D. Faça um programa que receba e divida 2 números. A saída da divisão precisará ser formatada com 4 casas decimais.

import 'dart:io';

class Validacao {
  double verificarNota(String mensagem) {
    while (true) {
      stdout.write(mensagem);
      String? entrada = stdin.readLineSync();

      double? valorConvertido = double.tryParse(entrada ?? "");

      if (valorConvertido != null) {
        return valorConvertido;
      }

      print("Valor inválido detectado pelo Cogitador. Tente novamente.");
    }
  }
}

class CalcularDivisao {
  double valor1;
  double valor2;

  CalcularDivisao({
    required this.valor1,
    required this.valor2,
  });

  double divisaoValores() => valor1 / valor2;

  @override
  String toString() {
    return """
======================== RESULTADOS ========================
Divisão = $valor1 ÷ $valor2 = ${divisaoValores()}
============================================================
""";
  }
}
void main() {
  Validacao v = Validacao();

  double n1 = v.verificarNota("Insira o 1º Valor: ");
  double n2 = v.verificarNota("Insira o 2º Valor: ");

  CalcularDivisao cM = CalcularDivisao(
    valor1: n1,
    valor2: n2,
  );

  print(cM);
}
