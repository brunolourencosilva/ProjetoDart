void main(){
  Map<String,int> meuMap = {'a':1,'b':2,'c':3};

  // 1.Usando entrie -> pecorre pares chave/valor diretamente
  print('-'*70);
  print('VARREDURA COM entries');
  print('-'*70);
  for(var entrada in meuMap.entries){
    String chave = entrada.key; // acessa a chave
    int valor = entrada.value;  // acesso o valor
    print('$chave: $valor');
  }
  print('-'*70);

  // 2.Usando key -> pecorre apenas as chaves
  // Podemos recuperar o valor acessando o Map com a chave
  Map<String,dynamic> meuMap2 = {'Nome':'John Marston','nascimento': 1970};

  print('VARRENDO COM keys');
  print('-'*70);
  for (String chave in meuMap2.keys){
    dynamic valor = meuMap2[chave]; // nusca o valor correspondente a chave
    print('$chave:$valor');
  }
  print('-'*70);
}