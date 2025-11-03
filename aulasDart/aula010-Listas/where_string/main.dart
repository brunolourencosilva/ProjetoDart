void main(){
  print('-'*70);
  print('EXEMPLO DE USO DO WHERE() COM STRINGS');
  print('='*70);

  // ---------------------------------------
  // Lista de nomes
  List<String> nomes = ['Alice','Ana','Beatriz','Bruno','Carla','Caio'];

  // ---------------------------------------
  // Filtrar nome que começam com a letra 'A'
  List<String> nomeComA = nomes.where((nome) => nome.startsWith('A')).toList();
  print('Nomes que começam com "A": $nomeComA');// [Alice, Ana]

  // ---------------------------------------
  // Filtrar nomes com mais de 4 caracteres
  List<String> nomesLongos = nomes.where((nome) => nome.length > 4).toList();
  print('Nomes com mais de 4 caracteres: $nomesLongos');
  print('-'*70);
}