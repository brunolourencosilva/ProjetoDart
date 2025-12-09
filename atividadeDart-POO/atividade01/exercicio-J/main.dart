// J. Faça um programa com entrada de dados para calcular a área de 4 objetos.
// J. Faça um programa com entrada de dados para calcular a área de 4 objetos.

import 'dart:io';
import 'dart:math';

// ======================= VALIDAÇÃO ==========================

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

// ======================= CALCULADORA ==========================

class CalculadoraArea {
  void areaQuadrado(double lado) {
    double areaDoQuadrado = lado * lado;
    print('Área do quadrado: $lado x $lado = $areaDoQuadrado');
  }

  void areaRetangulo(double base, double altura) {
    double areaDoRetangulo = base * altura;
    print('Área do retângulo: $base x $altura = $areaDoRetangulo');
  }

  void areaTriangulo(double base, double altura) {
    double areaDoTriangulo = (base * altura) / 2;
    print('Área do triângulo: ($base x $altura) / 2 = $areaDoTriangulo');
  }

  void areaCirculo(double raio) {
    double areaDoCirculo = 3.14 * pow(raio, 2);
    print('Área do círculo: 3.14 x $raio² = $areaDoCirculo');
  }
}

// =========================== MAIN =============================

void main() {
  Validacao v = Validacao();
  CalculadoraArea cA = CalculadoraArea();

  while (true) {
    print('=' * 70);
    print('CALCULADORA DE ÁREA');
    print('');
    print('1 - Quadrado');
    print('2 - Triângulo');
    print('3 - Retângulo');
    print('4 - Círculo');
    print('0 - Encerrar');
    print('=' * 70);
    stdout.write('\nOpção: ');

    String opcao = (stdin.readLineSync() ?? '').trim();

    if (opcao == '0') {
      print("\nEncerrando o cogitador...");
      break;
    }

    if (opcao == '1') {
      double lado = v.verificarNota("Insira o lado do quadrado: ");
      cA.areaQuadrado(lado);
    }

    else if (opcao == '2') {
      double base = v.verificarNota("Insira a base do triângulo: ");
      double altura = v.verificarNota("Insira a altura do triângulo: ");
      cA.areaTriangulo(base, altura);
    }

    else if (opcao == '3') {
      double base = v.verificarNota("Insira a base do retângulo: ");
      double altura = v.verificarNota("Insira a altura do retângulo: ");
      cA.areaRetangulo(base, altura);
    }

    else if (opcao == '4') {
      double raio = v.verificarNota("Insira o raio do círculo: ");
      cA.areaCirculo(raio);
    }

    else {
      print("Opção inválida. Tente novamente.");
    }

    print("");
  }
}
