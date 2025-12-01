// 11. Interseção de Duas Listas
// Dadas duas listas de inteiros, crie uma nova lista contendo apenas os
// elementos que estão presentes em ambas as listas (a interseção).

List<int> intersecaoParcialConjuntos({
  required List<int> lista1,
  required List<int> lista2,
}){
  List<int> listaResultado = [];

  for (var i in lista1){
    if(lista2.contains(i)){
      listaResultado.add(i);
    };
  }

  return listaResultado;
}

void main(){

List<int> listaA = [2, 5, 8, 10, 15, 20,67];
List<int> listaB = [3, 5, 7, 10, 14, 20, 30,40,2,67];

  var listaResultado = intersecaoParcialConjuntos(lista1: listaA , lista2: listaB);

  print('/' * 70);
  print('');
  print('-' * 70);
  print('Reversão Manual da Ordem dos Elementos');
  print('-' * 70);
  print('');
  print('Lista original: \n$listaA\n$listaB');
  print('Lista pos função: $listaResultado');
  print('');
  print('/' * 70);
}