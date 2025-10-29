void main(){

  String frase = 'Gal Gadot! My true love!!';

  //-------------------------------
  // length ➜ tamanho da string
  int tamanhoString = frase.length;

  // tudoUpperCase() ➜ tudo maiusculo
  String fraseMaiuscula = frase.toUpperCase();

  // toLowerCase() ➜ tudo minusculo
  String fraseMinuscula = frase.toLowerCase();

  // contains() ➜ verificar se um trecho existe na string
  bool contemGal = frase.contains('Gal');
  bool contemBatman = frase.contains('Batman');

  // substring() ➜ recorta parte da string (inicio, fim)
  String pedaco = frase.substring(0,9); // do inicio 0 ate 8

  // replaceAll() ➜ substitui todas as ocorrencias
  String substituida = frase . replaceAll('love', 'paixão');

  // split() ➜ divide a string em partes, gerando uma lista
  List<String> palavras = frase.split(' ');

  // trim() ➜ remove espaços extras no inicio e no fim
  String comEspacos = '   Gal Gadot   ';
  String semEspacos = comEspacos.trim();

  //-------------------------------
  // Saida formatada
  print('-'*70);
  print('Frase original: $frase');
  print('='*70);
  print('Tamanho da frase: $tamanhoString');
  print('Maiuscula: $fraseMaiuscula');
  print('Minuscula: $fraseMinuscula');
  print('-'*70);
  print('Contem "Gal"?: $contemGal');
  print('Contem "Batamn"?: $contemBatman');
  print('-'*70);
  print('Substring (0 a 9): $pedaco');
  print('ReplaceAll: $substituida');
  print('-'*70);
  print('Split em palavras: $palavras');
  print('Trim antes: $comEspacos');
  print('Trim depois: $semEspacos');
  print('-'*70);
}