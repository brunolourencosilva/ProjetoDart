// C. Faça um programa que peça 4 notas com  entrada de dados. O programa deverá calcular a média das notas digitadas.

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

class CalcularMedia {
  int nota1;
  int nota2;
  int nota3;
  int nota4;

  CalcularMedia({
    required this.nota1,
    required this.nota2,
    required this.nota3,
    required this.nota4,
  });

  int somaNotas() => nota1 + nota2 + nota3 + nota4;
  double media() => somaNotas() / 4;

  @override
  String toString() {
    return """
======================== RESULTADOS ========================

Nota 1: $nota1 | Nota 2: $nota2 | Nota 3: $nota3 | Nota 4: $nota4

Soma Total: ${somaNotas()} | Média Final: ${media()}

============================================================
""";
  }
}
void main() {
  Validacao v = Validacao();

  int n1 = v.verificarNota("Insira a 1º nota: ");
  int n2 = v.verificarNota("Insira a 2º nota: ");
  int n3 = v.verificarNota("Insira a 3º nota: ");
  int n4 = v.verificarNota("Insira a 4º nota: ");

  CalcularMedia c = CalcularMedia(
    nota1: n1,
    nota2: n2,
    nota3: n3,
    nota4: n4,
  );

  print(c);
}
