void main(){
  Map<String, String> palavras = {
    'p1' : 'Dart',
    'p2' : 'é',
    'p3' : 'uma',
    'p4' : 'linguagem',
    'p5' : 'incrivel'
  };

  print('-'*70);
  print('CONTATENANDO STRINGS COM O METODO REDUCE()');
  print('-'*70);

  String frase = palavras.values.reduce((v,e) => '$v $e');
  /**
   * Como funciona o metodo reduce():
   * - O metodo pecorre todo os valores do Map
   * (no caso: 'Dart', 'é', 'uma','linhagem','incrivel')
   * - O primeiro valor ('Dart') é usado como inicial (v)
   * - Em cada iteração:
   *    v = acumulador (resultado parcial)
   *    e = elemento atual
   * - A função concatena v e e com um espaço entre eles
   * 
   * Passo a passo:
   *    v='Dart', e='é' -> 'Dart é'
   *    v='Dart é', e='uma' -> 'Dart é uma'
   *    v='Dart é uma', e='linguagem' -> 'Dart é uma linguagem'
   *    v='Dart é uma linguagem', e='incrivel' -> 'Dart é uma linguagem incrivel'
   * 
   * Resultado final: 'Dart é uma linguagem incrivel'
   */

  print('Frase completa: "$frase"');
  print('-'*70);
}