// B. Faça um programa que peça um ano qualquer. O programa deverá calcular e imprimir a idade. 

import 'dart:io';

class Validacao {
  int entrada = 0;

  int verificar() {
    while (true) {
      stdout.write("Insira uma data de nascimento: ");
      String? dataNascimento = stdin.readLineSync();

      int? idadeConvertida = int.tryParse(dataNascimento ?? "");

      if (idadeConvertida != null) {
        return idadeConvertida;  // devolve o valor válido
      }

      print("Valor inválido detectado pelo Cogitador. Tente novamente.");
    }
  }
}

class CalcularIdade {
  int anoNascimento;
  int anoAtual = DateTime.now().year;

  CalcularIdade({
    required this.anoNascimento,
  });

  int idadeAtual() => anoAtual - anoNascimento;

  @override
  String toString() {
    return """
  ======================================= Resultados =======================================

  Ano Atual = $anoAtual | Ano de Nascimento = $anoNascimento | Idade Atual = ${idadeAtual()}

  ==========================================================================================
  """;
  }
}

void main() {
  Validacao v = Validacao();
  int anoNascimento = v.verificar(); // usa validação corretamente

  CalcularIdade c = CalcularIdade(anoNascimento: anoNascimento);
  print(c);
}
