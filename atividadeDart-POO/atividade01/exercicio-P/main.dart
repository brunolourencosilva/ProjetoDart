// P. Faça um programa para calcular o IMC COMPLETO de uma pessoa.

import 'dart:io';
import 'dart:math';

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

class Calcular{
  double massa;
  double altura;

  // Variável adicionada para armazenar a classificação
  String classificacaoImc = "";

  Calcular({
    required this.massa,
    required this.altura,
  });

  void imc(double massa, double altura) {
    double valorImc = massa / pow(altura, 2);

    if (valorImc < 18.5) {
      classificacaoImc = "Nível muito baixo – Magreza.";
    } else if (valorImc >= 18.5 && valorImc <= 24.9) {
      classificacaoImc = "Nível normal – Peso adequado.";
    } else if (valorImc >= 25.0 && valorImc <= 29.9) {
      classificacaoImc = "Nível levemente alto – Sobrepeso.";
    } else if (valorImc >= 30.0 && valorImc <= 34.9) {
      classificacaoImc = "Nível crítico – Obesidade Grau 1.";
    } else if (valorImc >= 35.0 && valorImc <= 39.9) {
      classificacaoImc = "Nível severo – Obesidade Grau 2.";
    } else if (valorImc >= 40.0) {
      classificacaoImc = "Nível extremo – Obesidade Grau 3.";
    }
      print("="*70);
    print('Massa: $massa | Altura: $altura | IMC: ${valorImc.toStringAsFixed(1)} | Classificação: $classificacaoImc',);
  }
}

void main() {
  Validacao v = Validacao();
  print("="*70);
  double n1 = v.verificarNota("Insira o valor de massa corporal em Kg: ");
  double n2 = v.verificarNota("Insira a altura em metro: ");

  Calcular cM = Calcular(
    massa: n1,
    altura: n2,
  );

  cM.imc(n1,n2);
}