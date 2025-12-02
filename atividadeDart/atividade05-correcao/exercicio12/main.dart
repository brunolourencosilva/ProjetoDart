/**
12. Normalização e Classificação de Dados
Dada uma lista de strings com valores duplicados e em ordem aleatória, 
o objetivo é primeiro remover todas as duplicatas e, em seguida, 
ordenar a lista resultante em ordem alfabética.
 */
// ------------------------------------------------------------------------
import 'dart:io';

List<String> receberLista() {
  return ['Ana', 'Beatriz', 'Ana', 'Carla'];
}

// ------------------------------------------------------------------------

List<String> normalizarEOrdenar(List<String> lista) {
  // Remove duplicatas usando Set e converte para lista
  List<String> listaUnica = lista.toSet().toList();
  // Ordena alfabeticamente
  listaUnica.sort();
  return listaUnica;
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
    List<String> lista = receberLista();

    print('LISTA ORIGINAL: $lista');

    List<String> listaNormalizada = normalizarEOrdenar(lista);

    print('Lista normalizada e ordenada: $listaNormalizada');

    if (!encerrarPrograma()) break;
  }
}
