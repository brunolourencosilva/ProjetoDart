void main(){
  print('-'*70);
  print('EXEMPLO WHERE(), MAP() E REDUCE() NA FILTRAGEM');
  print('='*70);

  // ----------------------------------------------------
  // Map de numeros: chave é uma String e valor é um int
  Map<String, int> pessoas = {
    'Jolyne':19,
    'Jotaro':40,
    'Josuke':16,
    'Joseph':97,
    'Jonatham':20
  };

  // ----------------------------------------------------
  // Encadeamento de metodos funcionais:
  // Objetivo: pegar nomes de pessoas adultas, colocar em maiusculas e 
  // concatenar em uma unica String

  // Entradas do Map (nome, idade)
  String nomesAdultos = pessoas.entries

      // Filtrar: apenas maiores de idade -> Jotaro,Jolyne,Joseph,Jonatham
      .where((entrada) => entrada.value >=18)

      // Transforma: nomes em maiusculos -> JOTARO,JOLYNE,JOSEPH,JONATHAM
      .map((entrada) => entrada.key.toUpperCase())

      // Reduz: concatena os nomes -> "JOTARO,JOLYNE,JOSEPH,JONATHAM"
      .reduce((acumulador, nome) => '$acumulador, $nome');

  // ----------------------------------------------------
  // Saida
  print('Nome das pessoas adultas: $nomesAdultos');
  print('='*70);

}