//  1 -  Filtragem e Soma Condicional de Pares com função:
//  Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e, simultaneamente, maiores que 10.
//  Após a filtragem, deve-se calcular a soma total desses números restantes.

int somaParesMaiorQue10(List<int> lista) {
  List<int> filtrados = lista.where((n) => n % 2 == 0 && n >= 10).toList();

  int soma = 0;
  for (int n in filtrados) {
    soma += n;
  }

  return soma;
}

void main() {
  List<int> listaInteiros = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];

  int resultado = somaParesMaiorQue10(listaInteiros);

  print('Soma dos pares >= 10: $resultado');
}
