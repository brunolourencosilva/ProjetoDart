import 'dart:io';

class Pessoa{
  // Atributo "nome" do tipo String
  // (não pode ser nulo, sempre terá valor valido)
  String nome;

  // Atributo "idade" do tipo int
  // (não pode ser nulo, sempre terá valor valido)
  int idade;

  // Construtor padrão com valores seguros
  Pessoa({this.nome = "Não informado", this.idade = 0});

  // Metodo para ler os dados da pessoa
  void lerDados(){
    stdout.write("Digite o nome: ");
    // Le a linha digitada (String? porque pode vir nula)
    String? entradaNome = stdin.readLineSync();

    // Se a linha digitada for nula ou vazia, mantem "Não informado"
    if (entradaNome != null && entradaNome.isEmpty){
      nome = entradaNome;
    }

    stdout.write("Digite a idade: ");
    // Le a linha digitada (String? porque pode vir nula)
    String? entradaIdade= stdin.readLineSync();


    int? idadeConvertida = int.tryParse(entradaIdade??"");
    if (idadeConvertida != null){
      idade = idadeConvertida;
    }
  }

  // Metodo para exibir os dados da pessoa formatados
  void exibirDados(){
    // Imprime um linha divisoria com 70 traços
    print('-'*70);

    // Exibe o nome (nunca sera nulo)
    print('Nome: $nome');

    // Exibe o idade (tambem nunca sera nulo)
    print('Idade: $idade');
    
    // Imprime um linha divisoria com 70 traços
    print('-'*70);
  }
}

void main(){
  var pessoa = Pessoa();
  pessoa.lerDados();
  pessoa.exibirDados();
}