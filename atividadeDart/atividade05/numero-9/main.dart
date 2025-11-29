//  Filtragem de Emails Válidos (Regra Simples)
//  Dada uma lista de strings que supostamente são endereços de email,
//  filtre e colete em uma nova lista apenas os emails que contêm exatamente um caractere '@' e terminam com ".com".

String filtroEmail({
  required List<String> lista,
}){
  
}
void main(){

  List<String> emails = [
    // válidos
    'arthur.morgan@gmail.com',
    'sadie.adler@gmail.com',
    'john.marston@gmail.com',
    'dutch.vanderlinde@yahoo.com',
    'charles.smith@yahoo.com',

    // inválidos
    'micah.bell@@outlaws..com',
    'reverend@swanson@faith',
    'hosea-matthews.mail.com',
    'uncle@lazyhorse',
    'jack_marston@.prairie',
  ];

  List<String> emailsValidos = [];

  for (var i in emails) {
    if (i.split('@').length == 2 && i.contains('.com') ){
      emailsValidos.add(i);
    }
  }
   print('/'*70);
  print('');
  print('Filtragem de Emails Válidos (Regra Simples)');
  print('');

  print('-'*70);
  print('');
  print('Lista original:');
  print('');
  for (var i = 0; i < emails.length; i++){
    print(emails[i]);
    print('');
  }
  print('-'*70);
  print('');
  print('Emails validos:');
  print('');
  for (var i = 0; i < emailsValidos.length; i++){
    print(emailsValidos[i]);
    print('');
  }
   print('/'*70);
}
