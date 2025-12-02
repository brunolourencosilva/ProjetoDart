class Animal {
  // Definição da classe Animal
  String nome;
  int idade;
  double peso;
  String raca;

  // Construtor da classe Animal na forma curta
  Animal(this.nome,this.idade,this.peso,this.raca);

  // Metodo void para exibir informações do animal
  void exibirInformacoes(){
    print("Nome: $nome");
    print("Idade: $idade");
    print("Peso: $peso");
    print("Raca: $raca");
    print('-'*70);
  }

  // metodo com retorno para calcular a idade em meses
  int calcularIdadeMeses(){
    return idade * 12;
  }
}

void main(){
  // Instanciando um animal
  Animal animal = Animal("Rex", 3, 10.5, "Labrador");
  // Chamda do metodo exibirInformacoes()
  animal.exibirInformacoes();
  // Chamada do metodo calccularIdadeMeses()
  int idadeMeses = animal.calcularIdadeMeses();
  print("Idade em meses: $idadeMeses");
  print('-'*70);
}