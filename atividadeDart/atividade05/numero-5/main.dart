//  5. Determinação do Segundo Valor de Pico
//  Dada uma lista de números inteiros, encontre e imprima o segundo maior valor presente na lista.
//  A lista pode conter duplicatas, mas o segundo maior valor deve ser o valor distinto que é imediatamente menor que o maior valor.

int? filtroPenultimoNumero({
  required List<int> lista,
}) {
  if (lista.length < 2) {
    print("Lista possui menos de 2 elementos.");
    return null;
  }

  int penultimo = lista[lista.length - 2];

  print("Penúltimo número: $penultimo");

  return penultimo;
}

void main() {
  List<int> listaInteiros = [
    1,2,3,4,5,6,7,8,9,10,
    11,12,13,14,15,16,17,18,19,20
  ];

  int? penultimo = filtroPenultimoNumero(lista: listaInteiros);

  print('/' * 70);
  print('');
  print('-' * 70);
  print('Determinação do Segundo Valor de Pico');
  print('-' * 70);
  print('');
  print('Penúltimo número: $penultimo');
  print('');
  print('/' * 70);
}

