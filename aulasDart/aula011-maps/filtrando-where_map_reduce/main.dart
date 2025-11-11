void main(){
  print('-'*70);
  print('EXEMPLO WHERE(), MAP() E REDUCE() NA FILTRAGEM');
  print('='*70);

  // ----------------------------------------------------
  // Map de numeros: chave é uma String e valor é um int
  Map<String, int> numeros = {
    'um':1,
    'dois':2,
    'tre':3,
    'quatro':4,
    'cinco':5
  };

  // ----------------------------------------------------
  // Encadeamento de metodos funcionais:
  int soma = numeros.values // Pegamos apenas os valores do Map [1,2,3,4,5]
      .where((num) => num % 2 == 0)
      .map((num) => num * 2)
      .reduce((soma,num) => soma + num);

  // ----------------------------------------------------
  // Saida
  print('Resultado final: $soma'); // 12
  print('='*70);
}