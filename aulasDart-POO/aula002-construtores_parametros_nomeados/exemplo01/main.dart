import 'dart:io';

class Triangulo{
  // Atributos
  double base;
  double altura;

  // construtores com parametro nomeados
  Triangulo({required this.base, required this.altura});

  // Metodos para calcular a area
  double calcularArea(){
    return (base * altura)/2;
  }
}

void main(){
  print('');
  stdout.write("Base do triangulo: ");
  double base = double.parse(stdin.readLineSync()!);

  stdout.write("Altura do triangulo: ");
  double altura = double.parse(stdin.readLineSync()!);

  // Instanciando o objeto com parametro NOMEADOS
  Triangulo triangulo = Triangulo(base: base, altura: altura);

  double area = triangulo.calcularArea();

  print("A area do triangulo é: $area");
  print('-'*70);
}