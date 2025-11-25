void Format() {
  try{
    print('-' * 70);
    print('Testando FormatException');
    print('-' * 70);

    var list = [1, 2, 3];
    // list.toUpperCase();
  } catch (e) {
    if (e is NoSuchMethodError) { // Melhor entendido com OO
      print('Erro: O método chamado não existe.');
      print('-' * 70);
    } else {
      print('Ocorreu um erro: $e');
      print('-' * 70);
    }
  }
}

void NoSuch() {
  print('-' * 70);
  print('Testando NoSuchMethodErro');
  print('-' * 70);

  try {
    // variavel boolena
    dynamic variavel = true;
    // Tentano iterar
    variavel++;
  } catch (e) {
    print('Erro!!! $e');
    print('-' * 70);
  }
}