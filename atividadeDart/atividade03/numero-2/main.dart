// 2. Identificação e Contagem de Ocorrências Distintas:
// Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma lista auxiliar)
// para armazenar apenas os elementos que ainda não foram vistos, reportando o total de elementos únicos ao final.

void main(){
  List<int> listaInteiros = [1,2,3,4,1,2,3,4,5,6,7,8,9,10,11,12,13,14,13,14,15,16,17,18,19,20];
  Set<int> valoresNaoUnicos = {};
  Set<int> duplicados = {};

  for (var n in listaInteiros) {
      if (!valoresNaoUnicos.add(n)) {
        duplicados.add(n);
      }
  }

  List<int> unicos = listaInteiros.where((n) => listaInteiros.where((x) => x == n).length == 1).toList();

  int totalUnicos = listaInteiros.where((n) => !duplicados.contains(n)).toSet().length;

  print('/'*70);
  print('');
  print('Identificação e Contagem de Ocorrências Distintas:');
  print('');
  print('Lista original: $listaInteiros');
  print('Duplicados: $duplicados');
  print('Valores únicos: $unicos');
  print('Total de valores únicos: $totalUnicos');
  print('');
  print('/'*70);
}