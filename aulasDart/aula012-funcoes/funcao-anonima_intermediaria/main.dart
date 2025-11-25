void main(){
  print('-'*70);
  print('EXEMPLO DE FUNÇÃO ANONIMA: INTERMEDIARIA');
  print('-'*70);

  var lista = [1,2,3,4,5];

  // Utilizada com metodo map()
  var novaLista = lista.map((numero) => numero * 2).toList();

  print(novaLista);
}