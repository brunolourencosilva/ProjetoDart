// G. Faça um programa para converter medidas

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

class ConverterMedidas {
  double valor1;

  ConverterMedidas({
    required this.valor1,

  });

  double centimetroParMetro() => valor1 / 100;
  double metroParaQuilometro() => valor1 / 1000;

  @override
  String toString() {
    return """
======================== RESULTADOS ========================
Valor original: $valor1
Em Metro: ${centimetroParMetro()} M
Em Quilometro: ${metroParaQuilometro()} KM
============================================================
""";
  }
}
void main() {
  Validacao v = Validacao();

  double n1 = v.verificarNota("""
============================================================
Insira um valor em centimetro:
""");

  ConverterMedidas cM = ConverterMedidas(
    valor1: n1,
  );

  print(cM);
}
