void main(){
  List<String> listaAlunas = [
    'Cynthia',
    'Ivone',
    'Izabelly',
    'Priscila'];

    // for in
    print('-'*70);
    print('Lista de Alunas:');

    int i = 1;
    for (var aluna in listaAlunas){
      // print(aluna);
      print('Aluna ${i++}: $aluna');
    }
    print('-'*70);
    //Podemos usar fatiamento como na linguagem Python
    print('');
}