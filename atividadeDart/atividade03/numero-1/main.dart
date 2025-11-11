//  1 -  Filtragem e Soma Condicional de Pares:
//  Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e, simultaneamente, maiores que 10.
//  Após a filtragem, deve-se calcular a soma total desses números restantes.

void main(){

  List<int> listaInteiros = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]; 
  List<int> numerosPares = listaInteiros.where((num) => num % 2 == 0).toList();
  List<int> numerosMaior10 = numerosPares.where((num) => num >= 10 ).toList();

  int soma = 0;

  for (int n in numerosMaior10){
    soma += n;
  }

  print('/'*70);
  print('');
  print('Filtragem e Soma Condicional de Pares:');
  print('');
  print('Lista dos numeros inteiros: $listaInteiros');
  print('lista dos numeros pares: $numerosPares');
  print('Soma total dos números restantes: $soma');
  print('');
  print('/'*70);
}