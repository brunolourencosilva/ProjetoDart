//  10. Reversão Manual da Ordem dos Elementos
//  Dada uma lista de strings, crie uma nova lista que contenha os mesmos elementos, 
//  mas na ordem inversa da lista original. 
//  O uso de List.reversed é permitido para fins de comparação, 
//  mas a implementação principal deve usar uma estrutura de repetição (for ou while).

List<String> espelharLista({
  required List<String> lista,
}){
  List<String> listaInversa = [];

  for (int i = lista.length - 1; i >= 0;i--){
    listaInversa.add(lista[i]);
  }

  return listaInversa;
}

void main(){

  List<String> palavras = [
    'Imperium',
    'Astartes',
    'Warp',
    'Heresy',
    'Daemon',
    'Terra',
    'Inquisition',
    'Exterminatus',
    'Primarch',
    'Adeptus'
  ];

  var listaReversa = espelharLista(lista: palavras);

  print('/' * 70);
  print('');
  print('-' * 70);
  print('Reversão Manual da Ordem dos Elementos');
  print('-' * 70);
  print('');
  print('Lista original: $palavras');
  print('Lista invertida: $listaReversa');
  print('');
  print('/' * 70);
}