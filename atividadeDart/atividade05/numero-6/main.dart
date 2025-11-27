//  6. Filtragem Dupla em Lista de Palavras
//  Dada uma lista de palavras (strings), filtre e colete em uma nova lista apenas as palavras que satisfazem duas condições simultâneas:
//  1 = o comprimento da palavra deve ser maior que 5 caracteres;
//  2 = a palavra deve começar com a letra 'A' (maiúscula ou minúscula).

void filtroLetraA({
  required List<List<dynamic>> lista,
}){
  for (var i in lista) {
    if ((i.startsWith('a')) || i.startsWith('A') && i.length >= 5 ) {
      lista.add(i);
    }
  }
}
void main() {
  List<String> listaPalavras = [
    'Dante',
    'Vergil',
    'Nero',
    'V',
    'Sparda',
    'Yamato',
    'Rebellion',
    'Abyss',
    'angel',
    'abyssal',
    'Trish',
    'dmc',
    'hell',
  ];

  List<String> listaFiltrada = [];

  // for (var i in listaPalavras) {
  //   if ((i.startsWith('a')) || i.startsWith('A') && i.length >= 5 ) {
  //     listaFiltrada.add(i);
  //   }
  // }

  print('/' * 70);
  print('');
  print('-' * 70);
  print('Filtragem Dupla em Lista de Palavras');
  print('-' * 70);
  print('');
  print('Lista original: $listaPalavras');
  print('Lista pós-filtragem: $listaFiltrada');
  print('');
  print('/' * 70);
}

