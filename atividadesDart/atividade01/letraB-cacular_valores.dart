import 'dart:io';

void main(){
  stdout.write("Entre com o 1 valor: ");
  var valor1 = double.parse(stdin.readLineSync()!);
  
  stdout.write("Entre com o 2 valor: ");
  var valor2 = double.parse(stdin.readLineSync()!);

  double soma = valor1 + valor2;
  double produto = valor1 * valor2;
  double subtracao = valor1 - valor2;
  double divisao = valor1 / valor2;
  double resto = valor1 % valor2;
  int divisao_inteira = valor1 ~/ valor2;

  print('-' *70);
  print('$valor1 + $valor2 : $soma');
  print('$valor1 x $valor2 : $produto');
  print('$valor1 - $valor2 : $subtracao');
  print('$valor1 ÷ $valor2 : $divisao');
  print('$valor1 % $valor2 : $resto');
   print('$valor1 // $valor2 : $divisao_inteira');
  print('-' *70);
}