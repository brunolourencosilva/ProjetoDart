import 'dart:io';

void main(){
  print('1 - Numero  par');
  print('2 - Maior numero');
  print('3 - sair');

  stdout.write('Entre com uma opcao: ');
  var opcao = int.parse(stdin.readLineSync()!);

  switch (opcao){
    case 1:
    int numero = 10;
    if (numero % 2 == 0){
      print('O numero $numero é par!');
    } else {
      print('O numero $numero é impar!');
    }
    break; // Interrompe o case
  case 2:
    int a = 3;
    int b = 3;
    if (a > b){
      print('O numero $a é maior que o numero $b!');
    } else if (a < b){
      print('O numero $a é menor que o numero $b!');
    } else {
      print('Os numeross são iguais!');
    }
    break; // Interrrompe o case
  case 3:
    print('Saino do programa...');
    break;
  default:
    print('Fora do intervalo de opções!');
  }
}