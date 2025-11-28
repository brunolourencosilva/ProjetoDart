//  7. Criação de Frase com Filtro
//  Dada uma lista de strings, crie uma única string (frase) concatenando apenas as 
//  palavras que terminam com a letra 'R' (maiúscula ou minúscula). As palavras devem ser separadas por um espaço na frase final.

String filtroLetraR({
  required List<String> lista,
}) {
    List<String> listaFiltrada = [];

  for (var i in lista) {
    if ((i.endsWith('R')) || i.endsWith('r')) {
      listaFiltrada.add(i);
    }
  }
  String fraseFinal = listaFiltrada.join(' ');

  return fraseFinal;
}

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
  
  var fraseFinal = filtroLetraR(lista: palavras);

  print('/' * 70);
  print('');
  print('-' * 70);
  print('Criação de Frase com Filtro');
  print('-' * 70);
  print('');
  print('Lista original: $palavras');
  print('Frase final: $fraseFinal');
  print('');
  print('/' * 70);
}

