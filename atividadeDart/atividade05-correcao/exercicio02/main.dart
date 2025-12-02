import 'dart:io';

/**
2. Identificação e Contagem de Ocorrências Distintas
Dada uma lista de inteiros que contém valores duplicados, 
o desafio é determinar quantos valores únicos existem na lista. 
A solução deve percorrer a lista e construir uma nova coleção 
(ou usar um Set temporário, se permitido, ou uma lista auxiliar) 
para armazenar apenas os elementos que ainda não foram vistos, 
reportando o total de elementos únicos ao final.
 */
// ------------------------------------------------------------------------

List<int> receberLista(int quantidade) {
  List<int> lista = [];

  for (var i = 1; i <= quantidade; i++) {
    while (true) {
      stdout.write('Entre com o $iº número: ');
      String? entradaNumero = stdin.readLineSync();

      if (entradaNumero == null || entradaNumero.isEmpty) {
        print('Entrada inválida!');
        continue;
      }

      int? numero = int.tryParse(entradaNumero);

      if (numero == null) {
        print('Número inválido!');
        continue;
      }

      lista.add(numero);
      break;
    }
  }

  return lista;
}

// ------------------------------------------------------------------------

void contarUnicos(List<int> lista) {
  // Pode usar Set
  var unicos = lista.toSet();

  // Alternativa manual, caso Set não seja permitido:
  // var unicos = <int>[];
  // for (var n in lista) {
  //   if (!unicos.contains(n)) unicos.add(n);
  // }

  stdout.write('\nElementos únicos: ');
  for (var n in unicos) {
    stdout.write('$n ');
  }
  print('\n');

  print('Quantidade de elementos únicos: ${unicos.length}');
}

// ------------------------------------------------------------------------

bool encerrarPrograma() {
  while (true) {
    stdout.write('Deseja continuar? (s/n): ');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.isEmpty) {
      print('Resposta inválida!');
      continue;
    }

    resposta = resposta.toLowerCase();

    if (resposta == 'n') {
      print('Fim do programa!');
      return false;
    } else if (resposta == 's') {
      return true;
    } else {
      print('Opção inválida! Digite "s" ou "n".');
    }
  }
}

// ------------------------------------------------------------------------

void main() {
  while (true) {
    int quantidade = receberValores();
    List<int> lista = receberLista(quantidade);

    contarUnicos(lista);

    if (!encerrarPrograma()) break;
  }
}


int receberValores() {
  print('-' * 70);
  print('Contagem de Ocorrências Distintas');
  print('=' * 70);

  while (true) {
    stdout.write('Entre com a quantidade de números: ');
    String? entradaQuantidade = stdin.readLineSync();

    if (entradaQuantidade == null || entradaQuantidade.isEmpty) {
      print('Entrada inválida! Tente novamente.');
      continue;
    }

    int? qtd = int.tryParse(entradaQuantidade);

    if (qtd == null || qtd <= 0) {
      print('Quantidade de números inválida! Tente novamente.');
      continue;
    }

    return qtd;
  }
}
