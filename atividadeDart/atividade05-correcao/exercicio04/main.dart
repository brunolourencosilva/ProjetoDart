/**
 * 4. Multiplicação de Elementos Ímpares
 * Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar.
 * Se for ímpar, ele deve ser multiplicado por 2. Se for par, ele deve permanecer
 * inalterado. O resultado final deve ser uma nova lista com os valores transformados.
 */
// ------------------------------------------------------------------------
import 'dart:io';

int receberQuantidade() {
  print('-' * 70);
  print('Multiplicação de Elementos Ímpares');
  print('=' * 70);

  while (true) {
    stdout.write('Entre com a quantidade de números: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Entrada inválida! Tente novamente.');
      continue;
    }

    int? qtd = int.tryParse(entrada);

    if (qtd == null || qtd <= 0) {
      print('Quantidade inválida! Informe um inteiro maior que zero.');
      continue;
    }

    return qtd;
  }
}

// ------------------------------------------------------------------------

List<int> receberNumeros(int quantidade) {
  List<int> numeros = [];

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

      numeros.add(numero);
      break;
    }
  }

  return numeros;
}

// ------------------------------------------------------------------------

List<int> transformarLista(List<int> lista) {
  return lista.map((numero) => numero % 2 != 0 ? numero * 2 : numero).toList();
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

    List<int> transformada = transformarLista(lista);

    print('\nLista original:');
    print(lista.join(' '));

    print('\nLista com ímpares multiplicados por 2:');
    print(transformada.join(' '));

    if (!encerrarPrograma()) break;
  }
}
