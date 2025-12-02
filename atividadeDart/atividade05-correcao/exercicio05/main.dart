/**
 * 5. Determinação do Segundo Valor de Pico
 * Dada uma lista de números inteiros, encontre e imprima o segundo maior valor
 * presente na lista. A lista pode conter duplicatas, mas o segundo maior valor
 * deve ser o valor distinto que é imediatamente menor que o maior valor.
 */
// ------------------------------------------------------------------------
import 'dart:io';

int receberQuantidade() {
  print('-' * 70);
  print('Determinação do Segundo Valor de Pico');
  print('=' * 70);

  while (true) {
    stdout.write('Entre com a quantidade de números: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Entrada inválida!');
      continue;
    }

    int? qtd = int.tryParse(entrada);

    if (qtd == null || qtd <= 0) {
      print('Quantidade de números inválida!');
      continue;
    }

    if (qtd < 2) {
      print('É necessário inserir pelo menos 2 números!');
      continue;
    }

    return qtd;
  }
}

// ------------------------------------------------------------------------

List<int> receberNumeros(int quantidade) {
  List<int> lista = [];

  for (var i = 1; i <= quantidade; i++) {
    while (true) {
      stdout.write('Entre com o $iº número: ');
      String? entrada = stdin.readLineSync();

      if (entrada == null || entrada.isEmpty) {
        print('Entrada inválida! Tente novamente.');
        continue;
      }

      int? numero = int.tryParse(entrada);

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

void determinarSegundoPico(List<int> lista) {
  print('\nLista original:');
  print(lista.join(' '));

  // Remove duplicatas usando Set
  var numerosDistintos = lista.toSet().toList();

  // Ordena de forma crescente
  numerosDistintos.sort();

  // Reverte para ficar em ordem decrescente
  numerosDistintos = numerosDistintos.reversed.toList();

  if (numerosDistintos.length < 2) {
    print('\nNão há segundo maior valor, pois todos os números são iguais!');
    return;
  }

  print('\nMaior valor: ${numerosDistintos[0]}');
  print('Segundo maior valor: ${numerosDistintos[1]}');
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
    int quantidade = receberQuantidade();
    List<int> lista = receberNumeros(quantidade);

    determinarSegundoPico(lista);

    if (!encerrarPrograma()) break;
  }
}
