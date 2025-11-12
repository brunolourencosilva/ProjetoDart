import 'dart:io';

void main(){

  List<Map<String, dynamic>> estoque = [
    {'nome': 'nuka cola',
      'preco': 15.99,
      'quantidade': 3,}
      ];

  List<Map<String, dynamic>> carrinho = [];

  while(true){
    print('\x1B[2J\x1B[0;0H');

    print('Menu Principal');
    print('1-Estoque');
    print('2-Carrinho de compras');
    print('0-Encerrar programa');

    stdout.write("\nOpção: ");
    String? opcao = stdin.readLineSync();

    // ================================ Menu Estoque ================================
    if (opcao == '1'){
      while(true){
        print('\x1B[2J\x1B[0;0H');

        print('Menu Estoque');
        print('1-Vizualizar estoque');
        print('2-Adicionar no estoque');
        print('3-Remover do estoque');
        print('4-Atualizar o estoque');
        print('0-voltar');

        stdout.write("\nOpção: ");

        // ================================ Vizualizar Estoque ================================
        String? opcaoEstoque = stdin.readLineSync();
        if (opcaoEstoque == '1'){
          if (estoque.isEmpty){
            print('Estoque vazio');

            stdout.write("\nPrecione Enter para continuar");
            String? continuar = stdin.readLineSync();
            print(continuar);

          }else{
            for (int i = 0; i < estoque.length; i++){
              var itens = estoque[i];
              String formatarNome(String nome) {
                return nome
                    .split(' ')
                    .map((palavra) =>
                        palavra.isNotEmpty
                            ? palavra[0].toUpperCase() + palavra.substring(1).toLowerCase()
                            : '')
                    .join(' ');
              }
              print('\n${i + 1}. Nome: ${formatarNome(itens['nome'])},Preço: ${itens['preco']}, Quantidade: ${itens['quantidade']}');


            }
            stdout.write("\nPrecione Enter para continuar");
            String? continuar = stdin.readLineSync();
            print(continuar);
          }
        }

        // ================================ Adicionar ao Estoque ================================
        if (opcaoEstoque == '2'){

          // ---- Nome ----
          stdout.write("Informe o nome do produto: ");
          String? nomeProduto = stdin.readLineSync();

          if (nomeProduto == null || nomeProduto.trim().isEmpty){
            print('Erro: nome não pode ser vazio!\n');

            stdout.write("\nPrecione Enter para continuar");
            String? continuar = stdin.readLineSync();
            print(continuar);
            continue;
          }
          String nomeMinusculoProduto = nomeProduto.trim().toLowerCase();

          // ---- Preço ----
          stdout.write('Informe o preço do produto: ');
          String? precoProduto =  stdin.readLineSync();

          double? preco = double.tryParse(precoProduto??'');
          if (preco == null || preco <= 0){
            print('Erro: preço invalido!\n');

            stdout.write("\nPrecione Enter para continuar");
            String? continuar = stdin.readLineSync();
            print(continuar);
            continue;
          }

          // ---- Quantidade ----
          stdout.write('Informe a quantidade do produto: ');
          String? quantidadeProduto =  stdin.readLineSync();

          int? quantidade = int.tryParse(quantidadeProduto??'');
          if (quantidade == null || quantidade <= 0){
            print('Erro: quantidade invalida!\n');

            stdout.write("\nPrecione Enter para continuar");
            String? continuar = stdin.readLineSync();
            print(continuar);
            continue;
          }

          // ---- Adicionando ----
          estoque.add({'nome':nomeMinusculoProduto.trim(),'preco':preco,'quantidade':quantidade});
          print('Produto adicionado com sucesso!\n');

          stdout.write("Precione Enter para continuar");
          String? continuar = stdin.readLineSync();
          print(continuar);
        }

        // ================================ Removendo do Estoque ================================
        else if (opcaoEstoque == '3'){

          // ---- Nome ----
          stdout.write('Informe o nome do produto a remover: ');
          String? nomeRemover = stdin.readLineSync();

          if (nomeRemover == null || nomeRemover.trim().isEmpty) {
            print('Erro: nome inválido!');
          } else {

            String nomeBusca = nomeRemover.trim().toLowerCase();
            int index = estoque.indexWhere((item) => item['nome'] == nomeBusca);

            if (index != -1) {
              estoque.removeAt(index);
              print('Produto removido com sucesso!');
            } else {
              print('Produto não encontrado no estoque.');
            }
          }
          stdout.write("\nPrecione Enter para continuar");
          String? continuar = stdin.readLineSync();
          print(continuar);
        }
      }
    }
  }
}
