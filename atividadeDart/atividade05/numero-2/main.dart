// 2. Identificação e Contagem de Ocorrências Distintas com função:
// Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma lista auxiliar)
// para armazenar apenas os elementos que ainda não foram vistos, reportando o total de elementos únicos ao final.

int filtroDuplicata(List<int> lista) {
  Set<int> valoresNaoUnicos = {};
  Set<int> duplicados = {};

  for (var n in lista) {
    if (!valoresNaoUnicos.add(n)) {
      duplicados.add(n);
    }
  }

  int totalUnicos = lista.where((n) => !duplicados.contains(n)).toSet().length;

  return totalUnicos;
}

void main() {
  List<int> listaInteiros = [
    1,2,3,4,1,2,3,4,
    5,6,7,8,9,10,11,12,
    13,14,13,14,15,16,17,18,19,20
  ];

  int resultado = filtroDuplicata(listaInteiros);

  print('/' * 70);
  print('');
  print('Identificação e Contagem de Ocorrências Distintas:');
  print('');
  print('Lista original: $listaInteiros');
  print('Quantidade de números únicos (não duplicados): $resultado');
  print('');
  print('/' * 70);
}
