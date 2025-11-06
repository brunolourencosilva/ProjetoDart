void main(){
  // --------------------------------------------
  // Map de agenda: cada chave é o nome da pessoa
  // e cada valor é Map com informações detalhadas(idade e email)
  Map<String, dynamic> agenda = {
    'John' : {'idade':50,'email':'john@gmail.com'},
    'Abigail':{'idde':40,'email':'abigail@gmail.com'},
  };

  // --------------------------------------------
  // Map de cadastro pessoal: chave ➔ valor de tipor variados (int,double,String)
  // dynamic permite que cada valor seja de tipo diferente
  Map<String, dynamic> cadastro = {
    'nome':'John Marston',
    'nascimento': 1970,
    'altura': 1.80,
    'est_civil':'casado',
    'cidade':'juiz de fora',
    'uf':'MG'
  };

  // --------------------------------------------
  // saida formatada
  print('-'*70);
  print('Minha agenda');
  print(agenda); // imprime o map completo
  print('-'*70);

  print('-'*70);
  print('Meu cadastro');
  print(cadastro) ;// imprime o map completo
  print('-'*70);
}