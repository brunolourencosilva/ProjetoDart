import 'dart:ffi';
import 'dart:io';

void main(){

  List<Map<String, dynamic>> estoque = [
    {'id': '1',
      'nome': 'nuka cola',
      'preco': 15.99,
      'quantidade': 3,}
      ];

  List<Map<String, dynamic>> carrinho = [];

  while(true){
    print('\x1B[2J\x1B[0;0H');

    print('========== Menu Principal ==========');
    print('1-Estoque');
    print('2-Carrinho de compras');
    print('0-Encerrar programa');

    stdout.write("\nOpção: ");
    String? opcao = stdin.readLineSync();

    // ================================ Menu Estoque ================================
    if (opcao == '1'){
      while(true){
        print('\x1B[2J\x1B[0;0H');

        print('========== Menu Estoque ==========');
        print('1-Vizualizar estoque');
        print('2-Adicionar no estoque');
        print('3-Remover do estoque');
        print('4-Atualizar o estoque');
        print('5-Resumo detalhado');
        print('0-voltar');

        stdout.write("\nOpção: ");
        String? opcaoEstoque = stdin.readLineSync();

        // ================================ Vizualizar Estoque ================================
        if (opcaoEstoque == '1'){
          if (estoque.isEmpty){
            print('\x1B[2J\x1B[0;0H');
            print('Estoque vazio');

            stdout.write("\nPrecione Enter para continuar");
            String? continuar = stdin.readLineSync();
            print(continuar);

          }else{
            print('/'*70);
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
            print('');
            print('/'*70);
            stdout.write("\nPrecione Enter para continuar");
            String? continuar = stdin.readLineSync();
            print(continuar);
          }
        }

        // ================================ Adicionar ao Estoque ================================
        if (opcaoEstoque == '2') {
          // ---- Nome ----
          stdout.write("Informe o nome do produto: ");
          String? nomeProduto = stdin.readLineSync();

          if (nomeProduto == null || nomeProduto.trim().isEmpty){
            print('Erro, valor invalido!!');
            stdout.write("\nPressione Enter para continuar");
            stdin.readLineSync();
            continue;
          }

          bool temNumero = nomeProduto.split('').any((c) => int.tryParse(c) != null);
          if (temNumero) {
            print('Erro: o nome do produto não pode conter números!');
            stdout.write("\nPressione Enter para continuar");
            stdin.readLineSync();
            continue;
          }

          String nomeMinusculoProduto = nomeProduto.trim().toLowerCase();

          // ---- Preço ----
          stdout.write('Informe o preço do produto: ');
          String? precoProduto = stdin.readLineSync();

          if (precoProduto == null || precoProduto.trim().isEmpty){
            print('Erro, valor invalido!!');
            stdout.write("\nPressione Enter para continuar");
            stdin.readLineSync();
            continue;
          }

          double? preco = double.tryParse(precoProduto);
          if(preco == null || preco < 0){
            print('Erro, valor invalido!!');
            stdout.write("\nPressione Enter para continuar");
            stdin.readLineSync();
            continue;
          }

          // ---- Quantidade ----
          stdout.write('Informe a quantidade do produto: ');
          String? quantidadeProduto = stdin.readLineSync();

          if (quantidadeProduto == null || quantidadeProduto.trim().isEmpty){
            print('Erro, valor invalido!!');
            stdout.write("\nPressione Enter para continuar");
            stdin.readLineSync();
            continue;
          }

          int? quantidade = int.tryParse(quantidadeProduto);
          if(quantidade == null || quantidade < 0){
            print('Erro, valor invalido!!');
            stdout.write("\nPressione Enter para continuar");
            stdin.readLineSync();
            continue;
          }

          // ---- Adicionando com ID ----
          int id = estoque.length + 1; // gera id automático
          estoque.add({
            'id': id,
            'nome': nomeMinusculoProduto.trim(),
            'preco': preco,
            'quantidade': quantidade
          });

          print('\nProduto adicionado com sucesso! ID: $id\n');
          stdout.write("Pressione Enter para continuar");
          stdin.readLineSync();
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

        // ================================ Atualizar o Estoque ================================
        else if (opcaoEstoque == '4'){

          // ---- Nome ----
          print('========== Menu Atualizar ==========');
          stdout.write('Informe o nome do produto que deseja atualizar: ');
          String? nomeAtualizar = stdin.readLineSync();

          if (nomeAtualizar == null || nomeAtualizar.trim().isEmpty){
            print('Erro, valor invalido!!');

            stdout.write("\n Precione a tecla Enter para continuar.");
            String? continuar = stdin.readLineSync();
            print(continuar);
            continue;
          }

          // ---- Buscando ----
          String nomeBusca = nomeAtualizar.trim().toLowerCase();
          int index = estoque.indexWhere((item) => item['nome'] == nomeBusca);
          print('\nProduto encontrado');

          // ================================ Opções de atualizar ================================
          while(true){
            if (index != -1) {
              print('\x1B[2J\x1B[0;0H');

              print('1-Atualizar Nome do produto');
              print('2-Atualizar Preço do produto');
              print('3-Atualizar Quantidade do produto');
              print('0-Cancelar atualização');

              stdout.write("\nOpção: ");
              String? opcaoAtualizar = stdin.readLineSync();

              // ---- Atualizar Nome ----
              if(opcaoAtualizar == "1"){
                print('========== Atualizar Nome do produto ==========');

                stdout.write('Informe o novo nome do produto: ');
                String? nomeNovoProduto = stdin.readLineSync();

                if (nomeNovoProduto == null || nomeNovoProduto.trim().isEmpty){
                  print('Erro, valor invalido!!');
                  stdout.write("\nPressione Enter para continuar");
                  stdin.readLineSync();
                  continue;
                }

                bool temNumero = nomeNovoProduto.split('').any((c) => int.tryParse(c) != null);
                if (temNumero) {
                  print('Erro: o nome do produto não pode conter números!');
                  stdout.write("\nPressione Enter para continuar");
                  stdin.readLineSync();
                  continue;
                }
                
                estoque[index]['nome'] = nomeNovoProduto;;
                print('Produto atualizado com sucesso!!');
                stdout.write("\nPressione Enter para continuar");
                stdin.readLineSync();
                continue;
              }

              // ---- Atualizar Preço ----
              else if(opcaoAtualizar == "2"){
                print('========== Atualizar Preço do produto ==========');

                stdout.write('Informe o novo preço do produto: ');
                String? precoNovoProduto = stdin.readLineSync();

                if (precoNovoProduto == null || precoNovoProduto.trim().isEmpty){
                  print('Erro, valor invalido!!');
                  stdout.write("\nPressione Enter para continuar");
                  stdin.readLineSync();
                  continue;
                }

                double? precoNovo = double.tryParse(precoNovoProduto);
                if(precoNovo == null || precoNovo < 0){
                  print('Erro, valor invalido!!');
                  stdout.write("\nPressione Enter para continuar");
                  stdin.readLineSync();
                  continue;
                }
                  estoque[index]['preco'] = precoNovo;

                  print('Produto atualizado com sucesso!!');
                  stdout.write("\nPressione Enter para continuar");
                  stdin.readLineSync();

              }

              // ---- Atualizar Quantidade ----
              else if(opcaoAtualizar == "3"){
                print('========== Atualizar Quantidade do produto ==========');

                stdout.write('Informe a nova quantidade do produto: ');
                String? quantidadeNovaProduto = stdin.readLineSync();

                if (quantidadeNovaProduto == null || quantidadeNovaProduto.trim().isEmpty){
                  print('Erro, valor invalido!!');
                  stdout.write("\nPressione Enter para continuar");
                  stdin.readLineSync();
                  continue;
                }

                int? qtd = int.tryParse(quantidadeNovaProduto);
                if(qtd == null || qtd < 0){
                  print('Erro, valor invalido!!');
                  stdout.write("\nPressione Enter para continuar");
                  stdin.readLineSync();
                  continue;
                }
                  estoque[index]['quantidade'] = qtd;
                  print('Produto atualizado com sucesso!!');
                  stdout.write("\nPressione Enter para continuar");
                  stdin.readLineSync();
                  continue;
              }

              // ---- Cancelar atualização ----
              else if(opcaoAtualizar == '0'){
                break;
              }
            } else {
              print('Produto não encontrado no estoque.');
              stdout.write("\nPressione Enter para continuar");
              stdin.readLineSync();
              continue;
            }
          }
        }
        // ================================ Resumo detalhado ================================
        else if (opcaoEstoque == '5'){
          while(true){
            print('\x1B[2J\x1B[0;0H');
            if (estoque.isEmpty){
              print('\x1B[2J\x1B[0;0H');
              print('Estoque vazio');

              stdout.write("\nPressione Enter para continuar");
              stdin.readLineSync();
              continue;
            }


            double total = 0.0;
            int totalqtd = 0;

            // ---- Total geral ----
            for (var produto in estoque) {
              double totalGeral = produto['preco'] * produto['quantidade'];
              total += totalGeral;
            }

            // ---- Quantidade total ----
            for (var produto in estoque) {
              int totalQuantidade = produto['quantidade'];
              totalqtd += totalQuantidade;
            }

            // ---- SubTotal de cada item ----
            print('SubTotal de cada item ');
            for (int i = 0; i < estoque.length; i++){
              var itens = estoque[i];
              double subTotal = itens['preco'] * itens['quantidade'];
              String formatarNome(String nome) {
              return nome
                  .split(' ')
                  .map((palavra) =>
                      palavra.isNotEmpty
                          ? palavra[0].toUpperCase() + palavra.substring(1).toLowerCase()
                          : '')
                  .join(' ');
              }
              print('');
              print('${i + 1}. Nome: ${formatarNome(itens['nome'])},Subtotal: $subTotal');
              print('');
            }

            print('/'*70);
            print('');
            print("Total geral: R\$ ${total.toStringAsFixed(2)}");
            print("Quantidade total: R\$ ${totalqtd}");
            print('');
            print('/'*70);

            stdout.write("\nPressione Enter para continuar");
            stdin.readLineSync();
            break;
            }
          }
        // ================================ Voltar para menu principal ================================
        else if(opcaoEstoque == "0"){
          break;
        }
      }
    }
  }
}
