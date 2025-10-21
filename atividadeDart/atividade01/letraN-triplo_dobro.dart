import 'dart:io';
void main() {
  while (true) {
    print(' ');
    print('/' * 70);
    stdout.write("Entre com um valor: ");
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Valor não pode ser vazio.");
      continue;
    }

    int? temp = int.tryParse(entrada);
    if (temp == null) {
      print("Digite um valor válido.");
      continue;
    }

    var valor = temp;

    if (valor < 0){
      var triplo = valor * 3;
      print('-' * 70);
      print("Valor negativo,o dobro do valor $valor sera $triplo");
      print('-' * 70);
    }else{
      var dobro = valor * 2;
      print('-' * 70);
      print("Valor positivo,o triplo do valor $valor sera $dobro");
      print('-' * 70);
    }
// Mudar para s/n invez desse que ja esta ai
    stdout.write("Digite '1' para sair / Digite qualquer outro valor para continuar: ");
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta == '1') {
      print(' ');
      print("Encerrando...");
      print('/' * 70);
      break;
    }

  }
}
