//  3. Cálculo de Média Ponderada Após Descarte
//  Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e, 
//  em seguida, calcule a média aritmética das notas restantes. O resultado deve ser um número decimal (double).

void main() {
  List<List<dynamic>> alunos = [
    ['Okuyasu', 4.5, 6.0, 5.5],
    ['Josuke', 6.0, 7.5, 8.0],
    ['Koiche', 9.0, 8.5, 10.0],
  ];

  print('/'*70);
  print('');
  print('-'*70);
  print('Cálculo de Média Ponderada Após Descarte');
  print('-'*70);

  for (var aluno in alunos) {
    String nome = aluno[0];
    List<double> notas = aluno.sublist(1).cast<double>();

    notas.remove(notas.reduce((a, b) => a < b ? a : b));

    double media = notas.reduce((a, b) => a + b) / notas.length;

    print('Aluno: $nome | Média (menor nota descartada): ${media.toStringAsFixed(2)}');
  }
  print('');
  print('/'*70);
}
