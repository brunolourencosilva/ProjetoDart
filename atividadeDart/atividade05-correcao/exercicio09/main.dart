/**
9. Filtragem de Emails Válidos (Regra Simples)
Dada uma lista de strings que supostamente são endereços de email, 
filtre e colete em uma nova lista apenas os emails que contêm exatamente 
um caractere '@' e terminam com ".com".
 */
// ------------------------------------------------------------------------
import 'dart:io';

List<String> receberLista() {
  return ['a@gmail.com', 'b@gmail.com', 'c@gmail.uk'];
}

// ------------------------------------------------------------------------

List<String> filtrarEmailsValidos(List<String> lista) {
  return lista.where((email) {
    bool possuiUmArroba = email.split('@').length == 2;
    bool terminaComCom = email.endsWith('.com');
    return possuiUmArroba && terminaComCom;
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
    List<String> emailsValidos = filtrarEmailsValidos(lista);

    print('\nLista original: $lista');
    print('Emails válidos (.com e 1 @): $emailsValidos');

    if (!encerrarPrograma()) break;
  }
}
