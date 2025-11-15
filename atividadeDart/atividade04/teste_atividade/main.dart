import 'dart:io';

void main() {
  List<Map<String, dynamic>> carrinho = [];

  while (true) {
    print('\x1B[2J\x1B[0;0H');
    print('========== CARRINHO DE COMPRAS ==========');
    print('1 - Adicionar produto');
    print('2 - Atualizar quantidade');
    print('3 - Remover produto');
    print('4 - Resumo detalhado');
    print('5 - Visualizar itens do carrinho');
    print('0 - Sair');
    stdout.write('Escolha uma opção: ');
    String? opcao = stdin.readLineSync();

    // ====================== SAIR ======================
    if (opcao == '0') {
      print('Saindo...');
      break;
    }

    // ==================================================
    //                ADICIONAR PRODUTO
    // ==================================================
    else if (opcao == '1') {
      print('\x1B[2J\x1B[0;0H');
      print('===== Adicionar Produto =====');
      // ---- Nome ----
      stdout.write("Informe o nome do produto: ");
      String? nomeProduto = stdin.readLineSync();

      // Verificação de nome vazio
      if (nomeProduto == null || nomeProduto.trim().isEmpty) {
        print('Erro: nome não pode ser vazio!\n');
        stdout.write("\nPressione Enter para continuar");
        stdin.readLineSync();
        continue;
      }

      // Verificação para impedir números
      RegExp apenasLetras = RegExp(r'^[A-Za-zÀ-ÿ\s]+$');

      if (!apenasLetras.hasMatch(nomeProduto)) {
        print('Erro: o nome não pode conter números ou símbolos!\n');
        stdout.write("\nPressione Enter para continuar");
        stdin.readLineSync();
        continue;
      }

      stdout.write('Preço do produto: ');
      double? preco = double.tryParse(stdin.readLineSync() ?? '');
      if (preco == null || preco <= 0) {
        print('Erro: preço inválido!');
        stdin.readLineSync();
        continue;
      }

      stdout.write('Quantidade: ');
      int? qtd = int.tryParse(stdin.readLineSync() ?? '');
      if (qtd == null || qtd <= 0) {
        print('Erro: quantidade inválida!');
        stdin.readLineSync();
        continue;
      }

      carrinho.add({
        'nome': nomeProduto,
        'preco': preco,
        'quantidade': qtd,
      });

      print('Produto adicionado com sucesso!');
      stdin.readLineSync();
    }

    // ==================================================
    //            ATUALIZAR QUANTIDADE
    // ==================================================
    else if (opcao == '2') {
      print('\x1B[2J\x1B[0;0H');
      if (carrinho.isEmpty) {
        print('Carrinho vazio!');
        stdin.readLineSync();
        continue;
      }

      stdout.write('Nome do produto para atualizar: ');
      String nomeBusca = (stdin.readLineSync() ?? '').trim();

      bool encontrado = false;

      for (int i = 0; i < carrinho.length; i++) {
        if (carrinho[i]['nome'].toString().toLowerCase() == nomeBusca.toLowerCase()) {
          encontrado = true;

          stdout.write('Nova quantidade: ');
          int? novaQtd = int.tryParse(stdin.readLineSync() ?? '');
          if (novaQtd == null || novaQtd <= 0) {
            print('Erro: quantidade inválida!');
            stdin.readLineSync();
            break;
          }

          carrinho[i]['quantidade'] = novaQtd;
          print('Quantidade atualizada!');
          stdin.readLineSync();
          break;
        }
      }

      if (!encontrado) {
        print('Produto não encontrado.');
        stdin.readLineSync();
      }
    }

    // ==================================================
    //                REMOVER PRODUTO
    // ==================================================
    else if (opcao == '3') {
      print('\x1B[2J\x1B[0;0H');
      if (carrinho.isEmpty) {
        print('Carrinho vazio!');
        stdin.readLineSync();
        continue;
      }

      stdout.write('Nome do produto para remover: ');
      String nomeRemove = (stdin.readLineSync() ?? '').trim();

      bool removido = false;

      for (int i = 0; i < carrinho.length; i++) {
        if (carrinho[i]['nome'].toString().toLowerCase() == nomeRemove.toLowerCase()) {
          carrinho.removeAt(i);
          removido = true;
          print('Produto removido!');
          stdin.readLineSync();
          break;
        }
      }

      if (!removido) {
        print('Produto não encontrado.');
        stdin.readLineSync();
      }
    }

    // ==================================================
    //              RESUMO DETALHADO
    // ==================================================
    else if (opcao == '4') {
      print('\x1B[2J\x1B[0;0H');
      if (carrinho.isEmpty) {
        print('Carrinho vazio!');
        stdin.readLineSync();
        continue;
      }

      print('========== RESUMO ==========');

      double totalGeral = 0;
      int totalItens = 0;

      // Variáveis para média e produto mais caro
      double somaPrecos = 0;
      Map<String, dynamic> maisCaro = carrinho[0];

      for (int i = 0; i < carrinho.length; i++) {
        var item = carrinho[i];

        double preco = item['preco'] ?? 0;
        int qtd = item['quantidade'] ?? 0;
        String nome = item['nome'] ?? '???';

        double subtotal = preco * qtd;

        print('- $nome | Preço: R\$ $preco | Qtd: $qtd | Subtotal: R\$ $subtotal');

        totalGeral += subtotal;
        totalItens += qtd;
        somaPrecos += preco;

        // Verificar mais caro
        if (preco > (maisCaro['preco'] ?? 0)) {
          maisCaro = item;
        }
      }

      double media = somaPrecos / carrinho.length;

      print('\nTotal Geral: R\$ $totalGeral');
      print('Quantidade total de itens: $totalItens');

      print('\nMédia dos preços: R\$ ${media.toStringAsFixed(2)}');
      print('Produto mais caro: ${maisCaro['nome']} (R\$ ${maisCaro['preco']})');

      stdin.readLineSync();
    }
    else if (opcao == '5') {
      print('\x1B[2J\x1B[0;0H');

      if (carrinho.isEmpty) {
        print('Carrinho vazio!');
        stdin.readLineSync();
        continue;
      }

      print('====== ITENS NO CARRINHO ======');

      for (int i = 0; i < carrinho.length; i++) {
        var item = carrinho[i];

        String nome = item['nome'] ?? '???';
        double preco = item['preco'] ?? 0;
        int quantidade = item['quantidade'] ?? 0;

        print('${i + 1}. $nome | Preço: R\$ $preco | Quantidade: $quantidade');
      }

      print('\nPressione Enter para continuar...');
      stdin.readLineSync();
    }

    // ==================================================
    //                OPÇÃO INVÁLIDA
    // ==================================================
    else {
      print('Opção inválida!');
      stdin.readLineSync();
    }
  }
}
