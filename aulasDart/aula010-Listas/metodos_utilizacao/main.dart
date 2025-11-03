//Metodos para utilizar com listas

void main(){
  print('-'*70);
  print('LISTA DE METODOS PARA LISTAS');
  print('='*70);
  // add: adiciona um elemento ao final da lista.
  List<int> listaInteiros = [1,2,3];
  print('Lista original: $listaInteiros');
  listaInteiros.add(4);
  print('Lista nova: $listaInteiros');
  print('-'*70);

  //addAll: adiciona varios elementos ao final da lista.
  List<String> listaFrutas = ['banana','maçã','pêra'];
  print('Lista original: $listaFrutas');
  listaFrutas.addAll(['Uva','goiaba','manga']);
  print('Lista nova: $listaFrutas');
  print('-'*70);

  //remove: remove um elemento especifico da lista.
  List<String> listaNomes = ['João','Maria','José'];
  print('Lista original: $listaNomes');
  listaNomes.remove('João');
  print('Lista nova: $listaNomes');
  print('-'*70);

  // removeAt: remove um elemento pelo indice.
  List<double> listaDouble = [1.1,2.2,3.3];
  print('Lista original: $listaDouble');
  listaDouble.removeAt(1);
  print('Lista nova: $listaDouble');
  print('-'*70);

  // insert: insere um elemento em um indice especifico.
  List<String> listaArtistas = ['Fernanda Torres','Paulo José','Raul Cortez'];
  print('Lista original: $listaArtistas');
  listaArtistas.insert(2, 'Grande Otelo');
  print('Apos insert(2, "Grande Otelo"): $listaArtistas');
  print('-'*70);

  // insertAll: insere VARIOS elementos a partir de um indice
  List<int> listaNumeros = [3, 4, 5];
  print('Lista original: $listaNumeros');
  listaNumeros.insertAll(0, [1, 2]);
  print('Apos insertAll (0. [1, 2]): $listaNumeros');
  print('-'*70);

  // indexOf:  retorna o indice da PRIMEIRA ocorrencia
  // retorna -1 se o elemento não existir
  List<String> listaVogais = ['a', 'e', 'i', 'o', 'u', 'a', 'i' ];
  print(listaVogais);
  print('Primeira ocorrencia de "Gol": indice ${listaVogais.indexOf('i')}');
  print('-'*70);

  // lastIndexOf: retorna o indice da ULTIMA ocorrencia
  List<String> listaCarros = ['Fusca','Gol','Ferrari','Gol'];
  print(listaCarros);
  print('Ultima ocorrencia de "Gol": indice ${listaCarros.lastIndexOf('Gol')}');
  print('-'*70);

  //sublist: gera uma sublista (copia) entre indices [inicial, final]
  //o indice final é EXCLUSIVO (não é incluido)
  List<int> lista = [1,2,3,4,5];
  print('Lista original: $lista');
  print('Sublita de 1 até 3: ${lista.sublist(1,3)}');
  print('-'*70);

  //sort: ordena a lista
  // Para String: odem alfabetica
  // Para numeros: ordem crescente
  List<String> listaVogais2 = ['u','a','o','i','e'];
  print('Lista original: $listaVogais2');
  listaVogais2.sort();
  print('Apos sort(): $listaVogais2');
  print('-'*70);

  // reversed: retorna os elementos em ordem reversa
  // IMPORTA: retorna um "Iterable", por isso usamos toList()
  List<int> listaNumeros2 = [1,2,3,4,5,6];
  print('Lista original: $listaNumeros2');
  var listaReversa = listaNumeros2.reversed.toList();
  print('Lista reversa: $listaReversa');
  print('-'*70);

  // shuffle: embaralha os elementos da lista
  // OBS: altera a lista original. não cria uma copia
  List<String> listaVerduras = ['Couve','Serraia','Alface','Rucula'];
  print('Lista original: $listaVerduras');
  listaVerduras.shuffle();
  print('Apos shuffle(): $listaVerduras');
  print('-'*70);
}