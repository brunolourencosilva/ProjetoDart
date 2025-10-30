// Estudo de listas: criação

void main(){
  // Lista vazia
  dynamic listaVazia = [];

  // Criando uma lista de inteiro
  // var para inferencia de valores
  var numeroInteiros1 = [1,2,3,4,5];

  // Utilizando Generics para tipar os valores

  // Lista de Inteiros
  List<int> numeroInteiros2 = [6,7,8,9,10];

  // Lista de Ponto Flutuante
  // 4 e 5 inteiros e a lista é double?
  List<double> numeroDecimais = [1.1,2.2,3.3,4,5];

  // Lista de Strings
  List<String> listaNomes = ['John Doe', 'Jane Doe'];

  // Listas de listas
  dynamic listasComListas = [
    [1,2,3],
    ['Um','Dois','Tres']
  ];

  //Saida
  print('-'*70);
  print('Lista vazia: $listaVazia');
  print('Lista de numero inteiros 1: $numeroInteiros1');
  print('Lista de numero inteiros 2: $numeroInteiros2');
  print('Lista de numeros decimais: $numeroDecimais');
  print('Lista de Strings: $listaNomes');
  print('Lista de listas: $listasComListas');
  print('-'*70);
}