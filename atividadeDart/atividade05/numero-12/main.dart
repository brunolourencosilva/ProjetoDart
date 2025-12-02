// 12. Normalização e Classificação de Dados
// Dada uma lista de strings com valores duplicados e em ordem aleatória,
// o objetivo é primeiro remover todas as duplicatas e, em seguida,
// ordenar a lista resultante em ordem alfabética.

List<String> normalizacaoClassificacao({
  required List<String> lista,
}) {
  List<String> listaResultado = [];

  for (var item in lista) {
    if (!listaResultado.contains(item)) {
      listaResultado.add(item);
    }
  }

  listaResultado.sort();

  return listaResultado;
}

void main() {
  List<String> palavras = [
    "WAAAGH!",
    "Gork e Mork me guiam!",
    "Dakaa!",
    "Mais Dakka!",
    "WAAAGH!",
    "Krumpa tudo!",
    "Orks é melhó!",
    "Senta a porrada!",
    "Mais Dakka!",
    "Roxo deixa invisivel!",
    "Vermelho corre mais!",
    "Peças boas são roubadas!",
    "Krumpa tudo!",
    "WAAAGH!",
    "Mekboyz mandam!",
    "Explosão é arte!",
  ];

  var listaPosFuncao = normalizacaoClassificacao(lista: palavras);

  print('/' * 70);
  print('');
  print('-' * 70);
  print('Reversão Manual da Ordem dos Elementos');
  print('-' * 70);
  print('');
  print('Lista original:');
  for (var item in palavras) {
    print(item);
  }

  print('-' * 70);
  print('Lista pos função:');
  for (var item in listaPosFuncao) {
    print(item);
  }

  print('');
  print('/' * 70);

}
