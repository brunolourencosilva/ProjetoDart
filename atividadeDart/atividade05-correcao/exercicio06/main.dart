/**
6. Filtragem Dupla em Lista de Palavras
Dada uma lista de palavras (strings), filtre e colete 
em uma nova lista apenas as palavras que satisfazem duas 
condições simultâneas: 
1) o comprimento da palavra deve ser maior que 5 caracteres; 
2) a palavra deve começar com a letra 'A' (maiúscula ou minúscula).
 */
// ------------------------------------------------------------------------
import 'dart:io';

List<String> receberLista() {
  // Poderia vir do usuário também, mas seguindo seu exemplo original:
  return ['maria', 'Joana', 'ana', 'Amanda', 'Aurelia'];
}

// ------------------------------------------------------------------------

List<String> filtrarPalavras(List<String> lista) {
  return lista.where((palavra) {
    return palavra.length > 5 && palavra.toLowerCase().startsWith('a');
  }).toList();
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

    List<String> filtradas = filtrarPalavras(lista);

    print('\nPalavras filtradas: $filtradas');

    if (!encerrarPrograma()) break;
  }
}

