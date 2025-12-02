/**
13. Checagem de Inclusão Total de Elementos
Dadas duas listas de inteiros, Lista Principal e Lista Subconjunto, 
verifique se todos os elementos da Lista Subconjunto estão presentes na Lista Principal. 
O resultado deve ser um valor booleano (true ou false).
 */
// ------------------------------------------------------------------------
import 'dart:io';

List<List<int>> receberListas() {
  List<int> listaPrincipal = [1, 2, 3, 4, 5, 6];
  List<int> listaSub = [3, 4, 5, 6];
  return [listaPrincipal, listaSub];
}

// ------------------------------------------------------------------------

bool verificarInclusao(List<int> listaPrincipal, List<int> listaSub) {
  for (var elemento in listaSub) {
    if (!listaPrincipal.contains(elemento)) {
      return false;
    }
  }
  return true;
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
    List<int> listaPrincipal = listas[0];
    List<int> listaSub = listas[1];

    print('Lista Principal: $listaPrincipal');
    print('Lista Subconjunto: $listaSub');

    bool todosPresentes = verificarInclusao(listaPrincipal, listaSub);
    print('Todos os elementos do subconjunto estão na lista principal? $todosPresentes');

    if (!encerrarPrograma()) break;
  }
}
