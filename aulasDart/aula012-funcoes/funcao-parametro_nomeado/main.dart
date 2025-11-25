import 'dart:io';

void main(){
  while(true){
    String? nomeFuncionario;
    String? cargoFuncionario;
    double? salaraioFuncionario;

    print('-'*70);

    // Entrada do nome
    stdout.write('Nome do funcionario: ');
    nomeFuncionario = stdin.readLineSync();
    if (nomeFuncionario == null|| nomeFuncionario.isEmpty){
      print('entrada invalida!');
      continue;
    }

    // Entrada do cargo
    stdout.write('Nome do funcionario: ');
    cargoFuncionario = stdin.readLineSync();
    if (cargoFuncionario == null || cargoFuncionario.isEmpty){
      print('Entrada invalida!');
      continue;
    }

    // Entrada do salario
    stdout.write('Salario funcionario: ');
    var entradaSalario = stdin.readLineSync();
    if (entradaSalario != null && entradaSalario.isNotEmpty){
      salaraioFuncionario = double.tryParse(entradaSalario);
    }
    if (salaraioFuncionario == null){
      print('Entrada invalida!');
      continue;
    }

    print('='*70);

    // Exibir cadastro
    exibirCasdastro(
      funcionario: nomeFuncionario,
      cargo: cargoFuncionario,
      salario: salaraioFuncionario,
    );

    // Perguntar se deseja continuar, validandp resposta
    while(true){
      stdout.write('Deseja cadastrar outro funcionario? (s/n): ');
      String? reposta = stdin.readLineSync();
      if (reposta == null)continue;

      reposta = reposta.toLowerCase();
      if (reposta == 's'){
        break;// continua  loop principal
      } else if (reposta == "n"){
        print('Fim do programa!');
        return;
      }else {
        print('Reposta invalida! Digite "s" para sim ou "n" para não.');
      }
    }
  }
}

void exibirCasdastro({
  required String funcionario,
  required String cargo,
  required double salario,
}){
  print('-'*70);
  print('Nome do funcionario: $funcionario');
  print('Cargo: $cargo');
  print('Salario: $salario');
  print('-'*70);
}