//  6. Filtragem Dupla em Lista de Palavras
//  Dada uma lista de palavras (strings), filtre e colete em uma nova lista apenas as palavras que satisfazem duas condições simultâneas:
//  1 = o comprimento da palavra deve ser maior que 5 caracteres;
//  2 = a palavra deve começar com a letra 'A' (maiúscula ou minúscula).

List<String> filtroLetraA({
  required List<String> lista,
}) {
  List<String> resultado = [];

  for (var palavra in lista) {
    if (palavra.length >= 5 && (palavra.startsWith('a') || palavra.startsWith('A'))) {
      resultado.add(palavra);
    }
  }

  return resultado;
}

void main() {
  List<String> pessoas = [
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
    'aAah',
    'hell',
  ];

  List<String> filtrados = filtroLetraA(lista: pessoas);

  print('/' * 70);
  print('');
  print('-' * 70);
  print('Filtragem Dupla em Lista de Palavras');
  print('-' * 70);
  print('');
  print('Lista original: $pessoas');
  print('Lista pós-filtragem: $filtrados');
  print('');
  print('/' * 70);
}
