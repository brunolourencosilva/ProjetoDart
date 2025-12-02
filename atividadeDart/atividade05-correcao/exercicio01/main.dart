
/**
1. Filtragem e Soma Condicional de Pares
Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os 
números que são pares e, simultaneamente, maiores que 10. Após a filtragem, 
deve-se calcular a soma total desses números restantes.
 */
// ------------------------------------------------------------------------
import 'dart:io';

int receberValores() {
  print('-' * 70);
  print('Filtragem e Soma Condicional de Pares');
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

    return qtd; // <-- Agora retorna o valor para filtrarPares()
  }
}

// ------------------------------------------------------------------------

void filtrarPares(int quantidadeNumeros) {
  List<int> listaInteiros = [];

  for (var i = 1; i <= quantidadeNumeros; i++) {
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

      listaInteiros.add(numero);
      break;
    }
  }

  // Filtra os números pares > 10
  var numerosFiltrados =
      listaInteiros.where((n) => n % 2 == 0 && n > 10).toList();

  var soma = numerosFiltrados.fold(0, (soma, n) => soma + n);

  stdout.write('\nNúmeros pares maiores que 10: ');
  for (var numero in numerosFiltrados) {
    stdout.write('$numero ');
  }
  print('\n');

  print('Soma dos números: $soma');
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
    filtrarPares(quantidade); 
    if (!encerrarPrograma()) break;
  }
}
