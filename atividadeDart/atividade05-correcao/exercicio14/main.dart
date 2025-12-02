/**
14. Análise Estatística Básica em Lista Numérica
Dada uma lista de números inteiros, calcule o desvio padrão 
amostral de forma simplificada. O processo envolve: 
1) calcular a média; 
2) calcular a diferença entre cada número e a média, elevando ao quadrado; 
3) somar os resultados; 
4) dividir pela contagem de elementos menos 1; 
5) tirar a raiz quadrada do resultado.
 */
// ------------------------------------------------------------------------
import 'dart:io';
import 'dart:math';

List<int> receberLista() {
  // Lista fixa para teste; pode ser adaptada para input do usuário
  List<int> listaInteiros = [1, 2, 3, 4, 5, 6];
  return listaInteiros;
}

// ------------------------------------------------------------------------

Map<String, double> calcularDesvioPadrao(List<int> lista) {
  int n = lista.length;

  // Média
  double media = lista.reduce((a, b) => a + b) / n;

  // Soma dos quadrados das diferenças em relação à média
  double somaDiffQuadrado = lista
      .map((x) => (x - media) * (x - media))
      .reduce((a, b) => a + b);

  // Variância amostral
  double variancia = somaDiffQuadrado / (n - 1);

  // Desvio padrão
  double desvioPadrao = sqrt(variancia);

  return {'media': media, 'desvioPadrao': desvioPadrao};
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
    List<int> listaInteiros = receberLista();
    var resultados = calcularDesvioPadrao(listaInteiros);

    print('\nLista: $listaInteiros');
    print('Média: ${resultados['media']!.toStringAsFixed(2)}');
    print('Desvio Padrão Amostral: ${resultados['desvioPadrao']!.toStringAsFixed(2)}');

    if (!encerrarPrograma()) break;
  }
}
