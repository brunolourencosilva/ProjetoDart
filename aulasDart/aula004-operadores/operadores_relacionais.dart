import 'dart:io';

void main(){
  // Declarando variaveis
  stdout.write('Entre com o valor de a: ');
  var a = int.parse(stdin.readLineSync()!);
  stdout.write('Entre com o valor de b: ');
  var b = int.parse(stdin.readLineSync()!);

  print('-' *70);
  print('$a == $b Resultado: ${a == b}');
  print('$a ≠ $b Resultado: ${a != b}');
  print('$a > $b Resultado: ${a > b}');
  print('$a < $b Resultado: ${a < b}');
  print('$a ≥ $b Resultado: ${a >= b}');
  print('$a ≤ $b Resultado: ${a <= b}');
  
}