//  4. Multiplicação de Elementos Ímpares
//  Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar. 
//  Se for ímpar, ele deve ser multiplicado por 2. Se for par, ele deve permanecer inalterado.
//  O resultado final deve ser uma nova lista com os valores transformados.

void main(){
  List<int> listaInteiros = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  List<int> listaPar = [];
  List<int> listaImpar = [];

  for (int i in listaInteiros){
    if (i % 2 == 0){
      listaPar.add(i);
    } else{
      listaImpar.add(i*2);
    }
  }

  print('/'*70);
  print('');
  print('-'*70);
  print('Multiplicação de Elementos Ímpares');
  print('-'*70);
  print('');
  print('Lista de numeros impares:\n$listaImpar');
  print('Lista de numeros pares:\n$listaPar');
  print('');
  print('/'*70);
}

