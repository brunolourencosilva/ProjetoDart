import 'dart:io';

class Aluno{
  String matricula;
  String nome;
  Map<String,double> notas;

  // construtor com parametros nomeados (boa pratica em dart)
  Aluno({
    required this.matricula,
    required this.nome,
    required this.notas,
  });

  // Sobrescrita (override) do metode toString para exibir o boletin formatado
  @override
  String toString(){
    // Calculo da media a partir do valores do mapa de notas
    double media = notas.values.reduce((a,b) => a + b ) / notas.length;

    // Retorna uma String formatada com as informações do aluno
    return'''
Boletim Escolar
----------------------------------------------------
Matricular: $matricula
Nome: $nome
Notas: 
  1º Bimestre: ${notas['n1']?.toStringAsFixed(2)}
  2º Bimestre: ${notas['n2']?.toStringAsFixed(2)}
  3º Bimestre: ${notas['n3']?.toStringAsFixed(2)}
  4º Bimestre: ${notas['n4']?.toStringAsFixed(2)}
----------------------------------------------------
Media Final: ${media.toStringAsFixed(2)}
Situação: ${media >= 6 ? 'Aprovado' : 'Reprovado'}
''';
  }
}

void main(){
  // Lista que irá armazenar varios alunos cadastrados
  List<Aluno> alunos = [];
  String opcao;

  // Loop para permitir cadastrar varios alunos
  do {
    stdout.write('\nDigite a matricula do aluno: ');
    String matricula = stdin.readLineSync()!;

    stdout.write("Digite o nome do Aluno: ");
    String nome = stdin.readLineSync()!;

    // Mapa para armazernar as 4 nota do aluno
    Map<String, double> notas = {};

    // loop para coletar 4 notas
    for (int i = 1; i <= 4; i++){
      stdout.write('Digite a nota do ${i}º bimestre: ');
      // Converter a entrada de texto para double
      double nota = double.parse(stdin.readLineSync()!);
      notas['n$i'] = nota; // Armazena no mapa: "n1": nota, "n2": nota...
    }

    // Cria um objeto Aluno usando o construtor com parametros nomeados
    alunos.add(Aluno(
      matricula: matricula,
      nome: nome, 
      notas: notas
      ));

      print("\nAluno cadastrado com sucesso!");

      // Pergunte se quer cadastrar outro aluno
      stdout.write("Deseja cadastrar outro aluno? (S/N) ");
      opcao = stdin.readLineSync()!.toUpperCase();

  } while (opcao == "S");

  // Exibe todos os alunos cadastrados utilizando o toString
  print('\n======= LISTA DE ALUNOS CADASTRADOS =======\n');
  for (Aluno aluno in alunos){
    print(aluno.toString());
  }
}