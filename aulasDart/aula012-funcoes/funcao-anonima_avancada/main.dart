void main(){
  print('-'*70);
  print('EXEMPLO DE FUNÇÃO ANONIMA: AVANCADA');
  print('-'*70);

  var lista = [1,2,3,4,5];

  //.isOdd é uma propriedade fornecida pela classe int em Dart
  // que retorna true se o numero for impar e false se for par.
  var novaLista = lista
  . where((numero) {return numero})
}