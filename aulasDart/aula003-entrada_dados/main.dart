import 'dart:io';
void main(){
  stdout.write("Entre com seu nome: ");
  // stdin.readLineSync() retorna String? -> pode ser null se o usuario não digitar nada
  // Por isso a variavel precisa ser do tipo String? para permitir null
  String? nome = stdin.readLineSync();

  // null Safety
  // - Se nome for null ou vazo, usamos valor padrão "não informado"
  // - O operador ? poderia ser usado diretamente, mas aqui adicionamos
  // isEmpty para garantir que string vazia tambem seja tratado
  nome = (nome == null || nome.isEmpty) ? 'não informado' : nome;
  stdout.write('Data de nascimento');

  // Lemos a entrada como string? (pode ser null)
  String? inputIdade = stdin.readLineSync();

  // Null Safety:
  // - Verificamos se a entrada não é null e não esta vazia
  // - int.tryParse() retorna int? (pode ser null se não for numero valido)
  int? idade = (inputIdade != null && inputIdade.isNotEmpty)
      ? int.tryParse(inputIdade)
      : null;
  
  // Se idade for null, significa que a conversão falhou -> mensagem de erro
  if (idade == null) {
    print('Idade invalida! Digite um numero valido.');
    return; // encerra o programa
  }

  // - nome ja foi tratado: nunca sera null aqui
  // - idade tambem é int não-nulo neste ponto
  print('');
  print('Seu nome é $nome');
  print('Nascimento $idade');
}