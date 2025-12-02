/**
 * 3. Cálculo de Média Ponderada Após Descarte
Considere uma lista de notas de alunos. O exercício exige 
que se descarte a menor nota da lista e, em seguida, 
calcule a média aritmética das notas restantes. 
O resultado deve ser um número decimal (double).

 Observações de comportamento:
 - Se o usuário informar apenas 1 nota, após descartar não há notas
	 suficientes para calcular média; exibimos uma mensagem apropriada.
 - Uso de `remove` remove apenas a primeira ocorrência da menor nota.
 */
// ------------------------------------------------------------------------
import 'dart:io';

int receberQuantidade() {
  print('-' * 70);
  print('Cálculo de Média após Descarte da Menor Nota');
  print('=' * 70);

  while (true) {
    stdout.write('Entre com a quantidade de notas: ');
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

List<double> receberNotas(int quantidade) {
  List<double> notas = [];

  for (var i = 1; i <= quantidade; i++) {
    while (true) {
      stdout.write('Entre com a $iª nota (use "." como separador decimal): ');
      String? entrada = stdin.readLineSync();

      if (entrada == null || entrada.isEmpty) {
        print('Entrada inválida!');
        continue;
      }

      double? nota = double.tryParse(entrada);

      if (nota == null) {
        print('Nota inválida! Digite um número (ex: 8.5)');
        continue;
      }

      notas.add(nota);
      break;
    }
  }

  return notas;
}

// ------------------------------------------------------------------------

void calcularMediaDescartandoMenor(List<double> notas) {
  stdout.write('\nNotas informadas: ');
  for (var n in notas) stdout.write('${n.toStringAsFixed(2)} ');
  print('');

  // Encontra menor nota
  var menor = notas.reduce((a, b) => a < b ? a : b);

  // Cria nova lista sem a menor nota
  var restantes = List<double>.from(notas)..remove(menor);

  print('Menor nota descartada: ${menor.toStringAsFixed(2)}');

  if (restantes.isEmpty) {
    print('Não há notas suficientes para calcular a média após o descarte.');
    return;
  }

  var soma = restantes.fold(0.0, (s, n) => s + n);
  var media = soma / restantes.length;

  print(
    'Notas consideradas para a média: ${restantes.map((e) => e.toStringAsFixed(2)).join(' ')}',
  );
  print('Média das notas (após descarte): ${media.toStringAsFixed(2)}');
}

// ------------------------------------------------------------------------

bool encerrarPrograma() {
  while (true) {
    stdout.write('Deseja continuar? (s/n): ');
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
    List<double> notas = receberNotas(quantidade);

    calcularMediaDescartandoMenor(notas);

    if (!encerrarPrograma()) break;
  }
}
