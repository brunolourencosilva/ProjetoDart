/**
15. Particionamento de Lista em Positivos, Zeros e Negativos
 */
// ------------------------------------------------------------------------
import 'dart:io';

List<int> receberLista() {
  // Lista fixa para teste
  List<int> listaInteiros = [1, 2, 3, -3, -2, -1, 0];
  return listaInteiros;
}

// ------------------------------------------------------------------------

Map<String, List<int>> particionarLista(List<int> lista) {
  // Positivos
  List<int> positivos = lista.where((x) => x > 0).toList();

  // Zeros
  List<int> zeros = lista.where((x) => x == 0).toList();

  // Negativos
  List<int> negativos = lista.where((x) => x < 0).toList();

  // Lista final no formato solicitado: positivos → zeros → negativos
  List<int> listaFinal = [...positivos, ...zeros, ...negativos];

  return {
    'positivos': positivos,
    'zeros': zeros,
    'negativos': negativos,
    'resultado': listaFinal,
  };
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
    List<int> listaInteiros = receberLista();
    var resultado = particionarLista(listaInteiros);

    print('\nLista original: $listaInteiros');
    print('Positivos: ${resultado['positivos']}');
    print('Zeros: ${resultado['zeros']}');
    print('Negativos: ${resultado['negativos']}');
    print('Lista final particionada: ${resultado['resultado']}');

    if (!encerrarPrograma()) break;
  }
}
