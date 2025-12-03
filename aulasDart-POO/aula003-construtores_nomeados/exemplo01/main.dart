import 'dart:io';

// Classe Produto com construtor padrão e construtorres nomeados
class Produto {
  String nome;
  double preco;

  // Construtor padrão: recebe um nom e reço digitados pelo usuario
  Produto(this.nome, this.preco);

  // Construtor nomeado: cria um produto gratuito
  // O usuário informa só o nome , e o preço é automaicmanet zerp
  Produto.gratuito(this.nome) : preco = 0.0;

  // Consrutor nomeado: cria um produto com valores fixos
  Produto.oferta()
      : nome = 'Playstation 5 Pro',
        preco = 1000;
  
  // Método para exibir os dados do produto
  void exibir() {
    print('\n --- Dados do produto ---');
    print('Nome: $nome');
    print('Preço: R\$ $preco');
  }
}

void main() {
  // ----------- Entrada de dados --------------
  // Petugnta o nome do produto
  stdout.write('Digite o nome do produto: ');
  String nome = stdin.readLineSync() ?? 'Desconhecido';

  // Pergunta o preço do produto
  stdout.write('Digite o preco do produto: ');
  double preco = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  // ---------- Criação dos objetos usando diferentes construtores ---------
  
  // Produto criado com o constutor padrão (nome + preço)
  Produto p1 = Produto(nome, preco);

  Produto p2 = Produto.gratuito('Amostra grátis');

  // Produto padrão usando construtor nomeado
  Produto p3 = Produto.oferta();

  // ------- Exibição dos Resultados -------

  print('\n Porudot criado manualmente');
  p1.exibir();

  print('\n Produto gratuito: ');
  p2.exibir();

  print('\nProduto em Oferta: ');
  p3.exibir();
}