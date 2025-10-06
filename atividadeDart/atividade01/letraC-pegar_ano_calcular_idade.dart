import 'dart:io';

void main() {
  int? valor1;
  int anoAtual = DateTime.now().year;

  while (valor1 == null) {
    stdout.write("Entre com um ano: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp = int.tryParse(entrada);
    if (temp == null) {
      print("Digite um ano válido.");
      continue;
    }
    if (temp <= 0) {
      print("Digite um ano válido.");
      continue;
    }
    if (temp > anoAtual) {
      print("Digite um ano menor ou igual ao atual.");
      continue;
    }

    valor1 = temp; // só chega aqui se passou em todas as verificações
  }

  var idade = anoAtual - valor1;
  print('Idade atual: $idade');
}
