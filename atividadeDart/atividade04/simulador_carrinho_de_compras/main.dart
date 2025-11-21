import 'dart:io';

void main() {
  // ================ INICIALIZAÇÃO DO SISTEMA ================
  List<Map<String, dynamic>> estoque = [
    {
      'id': 1,
      'nome': 'nuka cola',
      'preco': 15.99,
      'quantidade': 3,
    }
  ];

  List<Map<String, dynamic>> carrinho = [];

  RegExp validarNome = RegExp(r'^[A-Za-zÀ-ÿ\s]+$'); // aceita letras (com acentos) e espaços

  // ================ LOOP PRINCIPAL ================
  while (true) {
    print('\x1B[2J\x1B[0;0H');
    print('========== MENU PRINCIPAL ==========');
    print('1 - Estoque');
    print('2 - Carrinho de Compras');
    print('0 - Encerrar Programa');
    stdout.write('\nOpção: ');
    String opcao = (stdin.readLineSync() ?? '').trim();

    // ================ ESTOQUE ================
    if (opcao == '1') {
      while (true) {
        print('\x1B[2J\x1B[0;0H');
        print('========== MENU ESTOQUE ==========');
        print('1 - Visualizar Estoque');
        print('2 - Adicionar Produto');
        print('3 - Remover Produto');
        print('4 - Atualizar Produto');
        print('5 - Resumo Detalhado do Estoque (inclui média e mais caro)');
        print('0 - Voltar');
        stdout.write('\nOpção: ');
        String opcaoEstoque = (stdin.readLineSync() ?? '').trim();

        // ---------- 1 - Visualizar Estoque ----------
        if (opcaoEstoque == '1') {
          print('\x1B[2J\x1B[0;0H');
          if (estoque.isEmpty) {
            print('Estoque vazio.');
          } else {
            print('====== ITENS NO ESTOQUE ======');
            for (int i = 0; i < estoque.length; i++) {
              var p = estoque[i];
              String nomeFormatado(String nome) {
                return nome
                    .split(' ')
                    .map((palavra) => palavra.isNotEmpty
                        ? palavra[0].toUpperCase() + palavra.substring(1).toLowerCase()
                        : '')
                    .join(' ');
              }

              print(
                  '${i + 1}. ID: ${p['id']} | Nome: ${nomeFormatado(p['nome'] ?? '')} | Preço: R\$ ${((p['preco'] ?? 0.0) as double).toStringAsFixed(2)} | Quantidade: ${p['quantidade'] ?? 0}');
            }
          }
          stdout.write('\nPressione Enter para continuar...');
          stdin.readLineSync();
        }

        // ---------- 2 - Adicionar Produto ----------
        else if (opcaoEstoque == '2') {
          print('\x1B[2J\x1B[0;0H');
          print('====== ADICIONAR PRODUTO NO ESTOQUE ======');

          stdout.write('Nome do produto: ');
          String nomeEntrada = (stdin.readLineSync() ?? '').trim();

          if (nomeEntrada.isEmpty) {
            print('Erro: nome não pode ser vazio.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          if (!validarNome.hasMatch(nomeEntrada)) {
            print('Erro: nome inválido. Não use números ou símbolos.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          String nomeBusca = nomeEntrada.toLowerCase();
          bool existe = estoque.any((item) => (item['nome'] ?? '').toString().toLowerCase() == nomeBusca);

          if (existe) {
            print('Erro: já existe um produto com esse nome no estoque.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          stdout.write('Preço do produto: ');
          double? preco = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
          if (preco == null || preco <= 0) {
            print('Erro: preço inválido. Deve ser número maior que 0.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          stdout.write('Quantidade: ');
          int? qtd = int.tryParse((stdin.readLineSync() ?? '').trim());
          if (qtd == null || qtd < 0) {
            print('Erro: quantidade inválida. Deve ser inteiro >= 0.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          int novoId = (estoque.isEmpty ? 1 : (estoque.map((e) => e['id'] as int).reduce((a, b) => a > b ? a : b) + 1));
          estoque.add({
            'id': novoId,
            'nome': nomeEntrada.trim().toLowerCase(),
            'preco': preco,
            'quantidade': qtd,
          });

          print('Produto adicionado com sucesso. ID: $novoId');
          stdout.write('\nPressione Enter...');
          stdin.readLineSync();
        }

        // ---------- 3 - Remover Produto ----------
        else if (opcaoEstoque == '3') {
          print('\x1B[2J\x1B[0;0H');
          print('====== REMOVER PRODUTO DO ESTOQUE ======');
          stdout.write('Informe o nome do produto a remover: ');
          String nomeRemover = (stdin.readLineSync() ?? '').trim();

          if (nomeRemover.isEmpty) {
            print('Erro: nome inválido.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          String nomeBusca = nomeRemover.toLowerCase();
          int index = estoque.indexWhere((item) => (item['nome'] ?? '').toString().toLowerCase() == nomeBusca);

          if (index != -1) {

            var itemRemovido = estoque[index];
            int qtdNoCarrinho = 0;
            for (var c in carrinho) {
              if ((c['nome'] ?? '').toString().toLowerCase() == nomeBusca) {
                qtdNoCarrinho += (c['quantidade'] ?? 0) as int;
              }
            }
            if (qtdNoCarrinho > 0) {
              print('Aviso: existem $qtdNoCarrinho unidades deste produto no carrinho. Elas serão removidas do carrinho.');
              carrinho.removeWhere((c) => (c['nome'] ?? '').toString().toLowerCase() == nomeBusca);
            }

            estoque.removeAt(index);
            print('Produto removido do estoque.');
          } else {
            print('Produto não encontrado no estoque.');
          }

          stdout.write('\nPressione Enter...');
          stdin.readLineSync();
        }

        // ---------- 4 - Atualizar Produto ----------
        else if (opcaoEstoque == '4') {
          print('\x1B[2J\x1B[0;0H');
          print('====== ATUALIZAR PRODUTO ======');
          stdout.write('Informe o nome do produto a atualizar: ');
          String nomeAtualizar = (stdin.readLineSync() ?? '').trim();

          if (nomeAtualizar.isEmpty) {
            print('Erro: nome inválido.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          String nomeBusca = nomeAtualizar.toLowerCase();
          int index = estoque.indexWhere((item) => (item['nome'] ?? '').toString().toLowerCase() == nomeBusca);

          if (index == -1) {
            print('Produto não encontrado no estoque.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          while (true) {
            print('\x1B[2J\x1B[0;0H');
            print('Produto encontrado: ${estoque[index]['nome']}\n');
            print('1 - Atualizar nome');
            print('2 - Atualizar preço');
            print('3 - Atualizar quantidade');
            print('0 - Cancelar');
            stdout.write('\nOpção: ');
            String op = (stdin.readLineSync() ?? '').trim();

            if (op == '1') {
              stdout.write('Novo nome: ');
              String novoNome = (stdin.readLineSync() ?? '').trim();
              if (novoNome.isEmpty || !validarNome.hasMatch(novoNome)) {
                print('Erro: nome inválido.');
                stdout.write('\nPressione Enter...');
                stdin.readLineSync();
                continue;
              }

              bool existe = estoque.any((item) =>
                  (item['nome'] ?? '').toString().toLowerCase() == novoNome.toLowerCase() &&
                  item['id'] != estoque[index]['id']);
              if (existe) {
                print('Erro: já existe outro produto com esse nome.');
                stdout.write('\nPressione Enter...');
                stdin.readLineSync();
                continue;
              }
              estoque[index]['nome'] = novoNome.toLowerCase();
              print('Nome atualizado com sucesso.');
              stdout.write('\nPressione Enter...');
              stdin.readLineSync();
            } else if (op == '2') {
              stdout.write('Novo preço: ');
              double? novoPreco = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',', '.'));
              if (novoPreco == null || novoPreco <= 0) {
                print('Erro: preço inválido.');
                stdout.write('\nPressione Enter...');
                stdin.readLineSync();
                continue;
              }
              estoque[index]['preco'] = novoPreco;
              print('Preço atualizado com sucesso.');
              stdout.write('\nPressione Enter...');
              stdin.readLineSync();
            } else if (op == '3') {
              stdout.write('Nova quantidade: ');
              int? novaQtd = int.tryParse((stdin.readLineSync() ?? '').trim());
              if (novaQtd == null || novaQtd < 0) {
                print('Erro: quantidade inválida.');
                stdout.write('\nPressione Enter...');
                stdin.readLineSync();
                continue;
              }
              estoque[index]['quantidade'] = novaQtd;
              print('Quantidade atualizada com sucesso.');
              stdout.write('\nPressione Enter...');
              stdin.readLineSync();
            } else if (op == '0') {
              break;
            } else {
              print('Opção inválida.');
              stdout.write('\nPressione Enter...');
              stdin.readLineSync();
            }
          }
        }

        // ---------- 5 - Resumo Detalhado do Estoque ----------
        else if (opcaoEstoque == '5') {
          print('\x1B[2J\x1B[0;0H');
          if (estoque.isEmpty) {
            print('Estoque vazio.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          double totalGeral = 0.0;
          int totalQuantidade = 0;
          double somaPrecos = 0.0;
          Map<String, dynamic> maisCaro = estoque[0];

          print('====== RESUMO DO ESTOQUE ======');
          for (int i = 0; i < estoque.length; i++) {
            var p = estoque[i];
            double preco = (p['preco'] ?? 0.0) as double;
            int qtd = (p['quantidade'] ?? 0) as int;
            double subtotal = preco * qtd;

            String nomeFormatado(String nome) {
              return nome
                  .split(' ')
                  .map((palavra) => palavra.isNotEmpty
                      ? palavra[0].toUpperCase() + palavra.substring(1).toLowerCase()
                      : '')
                  .join(' ');
            }

            print('${i + 1}. Nome: ${nomeFormatado(p['nome'] ?? '')} | Subtotal: R\$ ${subtotal.toStringAsFixed(2)}');

            totalGeral += subtotal;
            totalQuantidade += qtd;
            somaPrecos += preco;

            if (preco > ((maisCaro['preco'] ?? 0.0) as double)) {
              maisCaro = p;
            }
          }

          double mediaPrecos = somaPrecos / estoque.length;

          print('\nTotal geral do estoque: R\$ ${totalGeral.toStringAsFixed(2)}');
          print('Quantidade total em estoque: $totalQuantidade');
          print('Média dos preços dos produtos (por item): R\$ ${mediaPrecos.toStringAsFixed(2)}');
          print('Produto mais caro: ${maisCaro['nome']} (R\$ ${((maisCaro['preco'] ?? 0.0) as double).toStringAsFixed(2)})');

          stdout.write('\nPressione Enter para continuar...');
          stdin.readLineSync();
        }

        // ---------- 0 - Voltar ----------
        else if (opcaoEstoque == '0') {
          break;
        } else {
          print('Opção inválida.');
          stdout.write('\nPressione Enter...');
          stdin.readLineSync();
        }
      }
    }

    // ========================= CARRINHO =========================
    else if (opcao == '2') {
      while (true) {
        print('\x1B[2J\x1B[0;0H');
        print('========== MENU CARRINHO ==========');
        print('1 - Visualizar Itens do Carrinho');
        print('2 - Adicionar do Estoque ao Carrinho');
        print('3 - Remover do Carrinho');
        print('4 - Resumo / Finalizar Compra');
        print('0 - Voltar');
        stdout.write('\nOpção: ');
        String opcaoCarrinho = (stdin.readLineSync() ?? '').trim();

        // ---------- 1 - Visualizar Itens do Carrinho ----------
        if (opcaoCarrinho == '1') {
          print('\x1B[2J\x1B[0;0H');
          if (carrinho.isEmpty) {
            print('Carrinho vazio.');
          } else {
            print('====== ITENS NO CARRINHO ======');
            for (int i = 0; i < carrinho.length; i++) {
              var c = carrinho[i];
              print('${i + 1}. ${c['nome']} | Preço: R\$ ${((c['preco'] ?? 0.0) as double).toStringAsFixed(2)} | Quantidade: ${c['quantidade']}');
            }
          }
          stdout.write('\nPressione Enter para continuar...');
          stdin.readLineSync();
        }

        // ---------- 2 - Adicionar do Estoque ao Carrinho ----------
        else if (opcaoCarrinho == '2') {
          print('\x1B[2J\x1B[0;0H');
          if (estoque.isEmpty) {
            print('Estoque vazio. Não há produtos para adicionar.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          print('====== ADICIONAR AO CARRINHO ======');
          print('Produtos disponíveis:');
          for (var p in estoque) {
            print('ID: ${p['id']} | Nome: ${p['nome']} | Preço: R\$ ${((p['preco'] ?? 0.0) as double).toStringAsFixed(2)} | Quantidade: ${p['quantidade']}');
          }

          stdout.write('\nInforme o nome do produto (exatamente): ');
          String nomeEscolhido = (stdin.readLineSync() ?? '').trim();
          if (nomeEscolhido.isEmpty) {
            print('Erro: nome inválido.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          String nomeBusca = nomeEscolhido.toLowerCase();
          int indexEst = estoque.indexWhere((item) => (item['nome'] ?? '').toString().toLowerCase() == nomeBusca);

          if (indexEst == -1) {
            print('Produto não encontrado no estoque.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          var produtoEst = estoque[indexEst];
          int disponivel = (produtoEst['quantidade'] ?? 0) as int;
          if (disponivel <= 0) {
            print('Produto sem estoque disponível.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          stdout.write('Quantidade a adicionar ao carrinho (disponível: $disponivel): ');
          int? qtdAdicionar = int.tryParse((stdin.readLineSync() ?? '').trim());
          if (qtdAdicionar == null || qtdAdicionar <= 0 || qtdAdicionar > disponivel) {
            print('Erro: quantidade inválida.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          estoque[indexEst]['quantidade'] = disponivel - qtdAdicionar;

          int indexCarr = carrinho.indexWhere((c) => (c['nome'] ?? '').toString().toLowerCase() == nomeBusca);
          if (indexCarr != -1) {
            carrinho[indexCarr]['quantidade'] = (carrinho[indexCarr]['quantidade'] ?? 0) + qtdAdicionar;
          } else {
            carrinho.add({
              'nome': produtoEst['nome'],
              'preco': produtoEst['preco'],
              'quantidade': qtdAdicionar,
            });
          }

          print('Item(s) adicionados ao carrinho com sucesso.');
          stdout.write('\nPressione Enter...');
          stdin.readLineSync();
        }

        // ---------- 3 - Remover do Carrinho ----------
        else if (opcaoCarrinho == '3') {
          print('\x1B[2J\x1B[0;0H');
          if (carrinho.isEmpty) {
            print('Carrinho vazio.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          print('====== REMOVER DO CARRINHO ======');
          for (int i = 0; i < carrinho.length; i++) {
            var c = carrinho[i];
            print('${i + 1}. ${c['nome']} | Qtd: ${c['quantidade']}');
          }

          stdout.write('\nInforme o nome do produto a remover do carrinho: ');
          String nomeRemover = (stdin.readLineSync() ?? '').trim();
          if (nomeRemover.isEmpty) {
            print('Erro: nome inválido.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          String nomeBusca = nomeRemover.toLowerCase();
          int indexCarr = carrinho.indexWhere((c) => (c['nome'] ?? '').toString().toLowerCase() == nomeBusca);

          if (indexCarr == -1) {
            print('Produto não encontrado no carrinho.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          // ao remover, restaurar quantidade para o estoque (se existir no estoque)
          int qtdNoCarrinho = (carrinho[indexCarr]['quantidade'] ?? 0) as int;

          int indexEst = estoque.indexWhere((e) => (e['nome'] ?? '').toString().toLowerCase() == nomeBusca);
          if (indexEst != -1) {
            estoque[indexEst]['quantidade'] = ((estoque[indexEst]['quantidade'] ?? 0) as int) + qtdNoCarrinho;
          } else {
            // se o produto foi removido do estoque anteriormente, podemos optar por re-criá-lo
            // aqui optamos por criar um registro simples para não perder histórico
            int novoId = (estoque.isEmpty ? 1 : (estoque.map((e) => e['id'] as int).reduce((a, b) => a > b ? a : b) + 1));
            estoque.add({
              'id': novoId,
              'nome': carrinho[indexCarr]['nome'],
              'preco': carrinho[indexCarr]['preco'],
              'quantidade': qtdNoCarrinho,
            });
          }

          // remover do carrinho
          carrinho.removeAt(indexCarr);
          print('Produto removido do carrinho e estoque atualizado.');
          stdout.write('\nPressione Enter...');
          stdin.readLineSync();
        }

        // ---------- 4 - Resumo / Finalizar Compra ----------
        else if (opcaoCarrinho == '4') {
          print('\x1B[2J\x1B[0;0H');
          if (carrinho.isEmpty) {
            print('Carrinho vazio.');
            stdout.write('\nPressione Enter...');
            stdin.readLineSync();
            continue;
          }

          double totalGeral = 0.0;
          int totalItens = 0;
          double somaPrecos = 0.0;
          Map<String, dynamic> maisCaro = carrinho[0];

          print('====== RESUMO DO CARRINHO ======');
          for (int i = 0; i < carrinho.length; i++) {
            var c = carrinho[i];
            String nome = c['nome'] ?? '';
            double preco = (c['preco'] ?? 0.0) as double;
            int qtd = (c['quantidade'] ?? 0) as int;
            double subtotal = preco * qtd;

            print('${i + 1}. $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Qtd: $qtd | Subtotal: R\$ ${subtotal.toStringAsFixed(2)}');

            totalGeral += subtotal;
            totalItens += qtd;
            somaPrecos += preco;

            if (preco > ((maisCaro['preco'] ?? 0.0) as double)) {
              maisCaro = c;
            }
          }

          double mediaPrecos = somaPrecos / carrinho.length;

          print('\nTotal geral: R\$ ${totalGeral.toStringAsFixed(2)}');
          print('Quantidade total de itens: $totalItens');
          print('Média dos preços (por item): R\$ ${mediaPrecos.toStringAsFixed(2)}');
          print('Item mais caro no carrinho: ${maisCaro['nome']} (R\$ ${((maisCaro['preco'] ?? 0.0) as double).toStringAsFixed(2)})');

          stdout.write('\nDeseja finalizar a compra e limpar o carrinho? (s/n): ');
          String confirmar = (stdin.readLineSync() ?? '').trim().toLowerCase();
          if (confirmar == 's' || confirmar == 'sim') {
            carrinho.clear();
            print('Compra finalizada com sucesso. Carrinho limpo.');
          } else {
            print('Finalização cancelada.');
          }

          stdout.write('\nPressione Enter...');
          stdin.readLineSync();
        }

        // ---------- 0 - Voltar ----------
        else if (opcaoCarrinho == '0') {
          break;
        } else {
          print('Opção inválida.');
          stdout.write('\nPressione Enter...');
          stdin.readLineSync();
        }
      }
    }

    // ========================= SAIR =========================
    else if (opcao == '0') {
      print('Encerrando o programa...');
      break;
    } else {
      print('Opção inválida no menu principal.');
      stdout.write('\nPressione Enter...');
      stdin.readLineSync();
    }
  }
}
