//  10. Reversão Manual da Ordem dos Elementos
//  Dada uma lista de strings, crie uma nova lista que contenha os mesmos elementos, 
//  mas na ordem inversa da lista original. 
//  O uso de List.reversed é permitido para fins de comparação, 
//  mas a implementação principal deve usar uma estrutura de repetição (for ou while).

import 'dart:io';

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

  List<String> listaInversa = [];

  for (int i = palavras.length - 1; i >= 0;i--){
    listaInversa.add(palavras[i]);
  }

  print('/' * 70);
  print('');
  print('-' * 70);
  print('Reversão Manual da Ordem dos Elementos');
  print('-' * 70);
  print('');
  print('Lista original: $palavras');
  print('Lista invertida: $listaInversa');
  print('');
  print('/' * 70);
}