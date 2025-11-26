//  1 -  Filtragem e Soma Condicional de Pares com parametro nomeado:
//  Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e, simultaneamente, maiores que 10.
//  Após a filtragem, deve-se calcular a soma total desses números restantes.

int filtrarSomarPares({
  required List<int> lista,
  int minimo = 10,
}){
  List<int> numerosPares = lista.where((num) => num % 2 == 0).toList();
  List<int> numerosMaiorMinimo = numerosPares.where((num) => num >= minimo).toList();

  int soma = 0;
  for (int n in numerosMaiorMinimo) {
    soma += n;
  }

  return soma;
}

void main() {
  List<int> listaInteiros = List.generate(20, (i) => i + 1);

  int resultado = filtrarSomarPares(
    lista: listaInteiros,
    minimo: 10, // parâmetro nomeado opcional
  );

  
  print('/'*70);
  print('');
  print('Filtragem e Soma Condicional de Pares:');
  print('');
  print("Resultado da soma: $resultado");
  print('');
  print('/'*70);
}
