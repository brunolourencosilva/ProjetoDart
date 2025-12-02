/**
7. Criação de Frase com Filtro
Dada uma lista de strings, crie uma única string (frase) 
concatenando apenas as palavras que terminam com a letra 'R' (maiúscula ou minúscula). 
As palavras devem ser separadas por um espaço na frase final.
 */
// ---------------------------------------------------------------
import 'dart:io';

List<String> receberLista() {
  return ['Você', 'é', 'o', 'melhor', 'programador'];
}

// ---------------------------------------------------------------

List<String> filtrarPalavras(List<String> lista) {
  return lista.where((palavra) {
    return palavra.toLowerCase().endsWith('r');
  }).toList();
}

// ---------------------------------------------------------------

String criarFrase(List<String> filtradas) {
  return filtradas.join(' ');
}

// ---------------------------------------------------------------

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

// ---------------------------------------------------------------

void main() {
  while (true) {
    List<String> lista = receberLista();

    List<String> filtradas = filtrarPalavras(lista);

    String frase = criarFrase(filtradas);

    print('\nPalavras filtradas: $filtradas');
    print('Frase final: "$frase"');

    if (!encerrarPrograma()) break;
  }
}
