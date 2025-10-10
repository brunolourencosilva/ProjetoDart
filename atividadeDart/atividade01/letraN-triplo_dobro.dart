import 'dart:io';
void main() {
  while (true) {
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
      print("Valor negativo,o triplo do valo $valor sera $triplo");
    }else{
      var dobro = valor * 2;
      print("Valor positivo,o triplo do valo $valor sera $dobro");
    }
  }
}
