/**
10. Reversão Manual da Ordem dos Elementos
Dada uma lista de strings, crie uma nova lista que contenha os mesmos elementos, 
mas na ordem inversa da lista original. O uso de List.reversed é permitido 
para fins de comparação, mas a implementação principal deve usar uma estrutura de 
repetição (for ou while).
 */
// ------------------------------------------------------------------------
import 'dart:io';

List<String> receberLista() {
  return ['String 1', 'String 2', 'String 3'];
}

// ------------------------------------------------------------------------

List<String> reversaoManual(List<String> lista) {
  List<String> invertida = [];
  for (var i = lista.length - 1; i >= 0; i--) {
    invertida.add(lista[i]);
  }
  return invertida;
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

    // Usando reversed apenas para comparação
    print('Usando reversed:');
    print(lista.reversed.toList());

    // Reversão manual
    List<String> listaInvertida = reversaoManual(lista);
    print('Reversão manual:');
    print(listaInvertida);

    if (!encerrarPrograma()) break;
  }
}
