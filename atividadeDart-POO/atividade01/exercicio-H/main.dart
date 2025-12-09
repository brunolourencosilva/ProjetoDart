// H. Faça um programa que receba um número inteiro. O programa deverá imprimir tabuada de multiplicação deste número.

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

class Tabuada {
  int valor1;

  Tabuada({
    required this.valor1,
  });

  String gerarTabuadaComoString() {
    String resultado = "";
    for (int i = 1; i <= 10; i++) {
      resultado += "$valor1 x $i = ${valor1 * i}\n";
    }
    return resultado;
  }

  @override
  String toString() {
    return """
======================== RESULTADOS ========================
Valor original: $valor1
.................
Tabuada:
${gerarTabuadaComoString()}
============================================================
""";
  }
}


void main() {
  Validacao v = Validacao();

  int n1 = v.verificarNota("""
============================================================
Insira um valor: """);

  Tabuada cM = Tabuada(
    valor1: n1,
  );

  print(cM);
}
