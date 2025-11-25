//  8. Transformação de Lista de Palavras em Lista de Comprimentos
//  Dada uma lista de palavras, crie uma nova lista de inteiros onde cada 
//  inteiro representa o número de caracteres da palavra correspondente na lista original.
 
void main() {
  List<String> palavras = [
    "Abyss",
    "Hollow",
    "Ember",
    "Lamentar",
    "Crepúsculo",
    "Ceniza",
    "Eclipse",
    "Silenciar",
    "Ocaso",
    "Perdurar"
  ];

  List<int> listaInteiros = [];
  
  for (var i in palavras) {
    listaInteiros.add(i.length);
  }

  print('/' * 70);
  print('');
  print('-' * 70);
  print('Filtragem Dupla em Lista de Palavras');
  print('-' * 70);
  print('');
  print('Lista original: $palavras');
  print('Lista de inteiros: $listaInteiros');
  print('');
  print('/' * 70);
}

