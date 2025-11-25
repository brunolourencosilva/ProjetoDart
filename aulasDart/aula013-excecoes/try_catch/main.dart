import 'dart:io';

void main() {
  try{
    stdout.write('Digite um número: ');
    var num1 = double.parse(stdin.readLineSync()!);

    stdout.write('Digite outro número: ');
    var num2 = double.parse(stdin.readLineSync()!);

    var resultado = dividir(num1, num2);
    print('O resultado da divião é: $resultado');

    // é comum no lugar de 'exception' colocar '0'
  } catch (exception) {
    print('Ocorreu um erro: $exception');
  }
}

double dividir(double a, double b) {
  if (b == 0) {
    // lançamento da exeção
    throw Exception('Divisão or zero não é permitida.');
  }
  return a / b;
}