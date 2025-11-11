void maib(){
  print('-'*70);
  print('EXEMPLO DE WHERE EM MAPA');
  print('-'*70);

  Map<String , int> pessoas = {
    'Alice': 20,
    'Jotaro': 17,
    'Carol': 25,
    'Dave': 16,
    'Eve': 30
  };

  // Filtra apenas as pessoas com idade maior que 18 anos
  // 1. pessoas.entries retorna um Iterable de MapEntry (chave e valor)
  // 2. where((element) => element.value > 18) filtra apenas as entradas
  //    cujo valor (idade) é maior que 18
  // 3. Map.fromEntries(...) converte novamente o Iterable filtrado em um Map

  Map<String, int> pessoaMaiores = 
    Map.fromEntries(pessoas.entries.where((element) => element.value > 18));
  
  // Saida esperada:
  print(pessoaMaiores); // {Alice: 20,Carol: 25,Eve: 30}
  print('-'*70);
}