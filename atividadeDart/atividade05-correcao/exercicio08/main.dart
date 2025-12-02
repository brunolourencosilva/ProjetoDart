/**
8. Transformação de Lista de Palavras em Lista de Comprimentos
Dada uma lista de palavras, crie uma nova lista de inteiros onde 
cada inteiro representa o número de caracteres da palavra 
correspondente na lista original.
 */
// ------------------------------------------------------------------------
import 'dart:io';

List<String> receberLista() {
  return ['Lista', 'de', 'palavras'];
}

// ------------------------------------------------------------------------

List<int> transformarEmComprimentos(List<String> lista) {
  return lista.map((palavra) => palavra.length).toList();
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

    List<int> comprimentos = transformarEmComprimentos(lista);

    print('\nLista original: $lista');
    print('Lista de comprimentos: $comprimentos');

    if (!encerrarPrograma()) break;
  }
}

