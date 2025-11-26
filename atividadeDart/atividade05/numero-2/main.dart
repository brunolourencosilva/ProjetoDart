// 2. Identificação e Contagem de Ocorrências Distintas com parametro nomeado:
// Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma lista auxiliar)
// para armazenar apenas os elementos que ainda não foram vistos, reportando o total de elementos únicos ao final.

int filtroDuplicata({
  required List<int> lista,
  int minimo = 20,
}) {
  Set<int> vistos = {};
  Set<int> duplicados = {};

  for (var n in lista) {
    if (!vistos.add(n)) {
      duplicados.add(n);
    }
  }

  List<int> unicos = lista.where((n) => !duplicados.contains(n)).toList();

  int soma = unicos.where((n) => n >= minimo).fold(0, (a, b) => a + b);

  return soma;
}

void main() {
  List<int> listaInteiros = [
    1,2,3,4,1,2,3,4,
    5,6,7,8,9,10,11,12,
    13,14,13,14,15,16,17,18,19,20
  ];

  int resultado = filtroDuplicata(lista: listaInteiros, minimo: 20);

  print('/' * 70);
  print('');
  print('Identificação e Contagem de Ocorrências Distintas:');
  print('');
  print('Lista original: $listaInteiros');
  print('Quantidade de números únicos (não duplicados): $resultado');
  print('');
  print('/' * 70);
}
