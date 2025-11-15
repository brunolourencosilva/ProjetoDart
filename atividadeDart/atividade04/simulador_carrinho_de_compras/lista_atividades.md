# 📱 Desenvolvimento Móvel: Atividade 04

---

Simulador de Carrinho de Compras

O projeto consiste na criação de um simulador de carrinho de compras, voltado à prática da manipulação de listas e mapas em conjunto. O sistema deve utilizar uma lista de mapas (List<Map<String, dynamic>>) para representar os produtos adicionados ao carrinho, sendo que cada produto deve conter as chaves ‘nome’, ‘preco’ e ‘quantidade’.
O programa deve oferecer opções para adicionar novos produtos, atualizar a quantidade de um item existente, remover um produto pelo nome e exibir um resumo detalhado com o subtotal de cada item, o total geral e a quantidade total de produtos.

Todas as operações de modificação ou leitura devem ser realizadas acessando diretamente as chaves do mapa, como produto['preco'] ou produto['quantidade'].O sistema deve validar entradas incorretas, impedindo valores nulos ou negativos, e empregar operadores de null safety (??, ?., !) para evitar erros de execução. Estruturas de repetição devem ser utilizadas para controlar o menu principal, e condicionais, para as decisões de fluxo. Como desafio adicional, o aluno pode implementar funções que calculem a média de preços dos produtos e identifiquem o item mais caro do carrinho, reforçando o domínio da estrutura Map.

lista necessarias:

- lista para estoque de itens;
- lista para o carrinho de compras.

---