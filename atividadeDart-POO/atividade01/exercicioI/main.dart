// I. Faça um programa que receba um valor em reais, depois calcule quantos euros, dólares e wons dariam para comprar com esse valor.

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

      print("Valor inválido detectado. Tente novamente.");
    }
  }
}

class ConversorDeMoedas {
  double valor1;

  ConversorDeMoedas({
    required this.valor1,
  });

  double valorEuro() => valor1 / 6.32;
  double valorDolar() => valor1 / 5.43;
  double valorWons() => valor1 / 0.0037;
  
  @override
  String toString() {
    return """
======================== RESULTADOS ========================
Valor original em Real: $valor1
....................
Valores convertidos:
Dolar: ${valorDolar().toStringAsFixed(2)} | Euro: ${valorEuro().toStringAsFixed(2)} | Won: ${valorWons().toStringAsFixed(2)}
============================================================
""";
  }
}


void main() {
  Validacao v = Validacao();

  double n1 = v.verificarNota("""
============================================================
Insira um valor em Real: """);

  ConversorDeMoedas cM = ConversorDeMoedas(
    valor1: n1,
  );

  print(cM);
}
