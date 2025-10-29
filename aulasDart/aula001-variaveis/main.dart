void main() {
  // Valores inteiros
  int idade = 50;
  
  // Valores com onto flutuante
  double altura = 1.80;
  
  // Valores booleamos
  bool opcao = true;
  
  // Valores do tipo String
  String nome = "John Doe";

  print('-' *70);
  print('Meu nome é $nome, tenho $idade anos.');
  print('Minha altura é ${altura.toStringAsFixed(2)}m.');
  print('Esta é uma aula de Dart? $opcao');
  print('-' *70);
}
