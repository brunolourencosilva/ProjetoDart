/**
11. Interseção de Duas Listas
Dadas duas listas de inteiros, crie uma nova lista contendo apenas os 
elementos que estão presentes em ambas as listas (a interseção).
 */
// ------------------------------------------------------------------------
import 'dart:io';

List<List<int>> receberListas() {
  List<int> lista1 = [1, 2, 3, 4];
  List<int> lista2 = [3, 4, 5, 6];
  return [lista1, lista2];
}

// ------------------------------------------------------------------------

List<int> intersecaoListas(List<int> lista1, List<int> lista2) {
  List<int> intersecao = [];
  for (var n1 in lista1) {
    for (var n2 in lista2) {
      if (n1 == n2 && !intersecao.contains(n1)) {
        intersecao.add(n1);
      }
    }
  }
  return intersecao;
}

// ------------------------------------------------------------------------

bool encerrarPrograma() {
  while (true) {
    stdout.write('\nDeseja continuar? (s/n): ');
    String? resp = stdin.readLineSync();

    if (resp == null || resp.isEmpty) {
      print('Resposta inválida!');
      continue;
    }

    resp = resp.toLowerCase();

    if (resp == 'n') {
      print('Fim do programa!');
      return false;
    } else if (resp == 's') {
      return true;
    } else {
      print('Opção inválida! Digite "s" ou "n".');
    }
  }
}

// ------------------------------------------------------------------------

void main() {
  while (true) {
    List<List<int>> listas = receberListas();
    List<int> lista1 = listas[0];
    List<int> lista2 = listas[1];

    List<int> intersecao = intersecaoListas(lista1, lista2);

    print('\nLista 1: $lista1');
    print('Lista 2: $lista2');

    if (intersecao.isNotEmpty) {
      print('Números em comum: $intersecao');
    } else {
      print('Nenhum número igual encontrado.');
    }

    if (!encerrarPrograma()) break;
  }
}
