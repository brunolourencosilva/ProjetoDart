import 'dart:io';

// Classe compromisso representa cada compromisso da agenda
class Compromisso {
  String titulo;
  String data;
  String hora;
  String descricao;

  // Construtor com parametro nomeados e obrigatorios (required)
  Compromisso({
    required this.titulo,
    required this.data,
    required this.hora,
    required this.descricao,
  });

  // Metodo para exibir o compromisso formatado
  // override sobrescreve o metodo toString, utilizando para exibição
  @override
  String toString(){
    return "Titulo: $titulo | Data: $data | Hora: $hora | Descrição: $descricao";
  }
}

// classe Agenda que guarda multplos compromissos
class Agenda{
  List<Compromisso> compromissos = [];

  // Adiciona um compromisso á lista
  void adicionaCompromisso(Compromisso compromisso){
    compromissos.add(compromisso);
    print('\nCompromisso adicionado com sucesso!\n');
  }

  // listatodods os compromissos regstrados
  void listarCompromissos(){
    if (compromissos.isEmpty){
      print('\nNenhum compromissp cadastrado.\n');
    }else{
      print('\nLista de comrpmissos:');
      for (int i = 0;i < compromissos.length; i++){
        print('${i + 1}. ${compromissos[i]}');
      }
    }
  }
}

// Função para ler texto com validação de null e vazio
String lerEntrada(String mensagem){
  String? entrada;
  do{
    stdout.write(mensagem);
    entrada = stdin.readLineSync();

    // validação null safety (entrada != null)e vazio
    if (entrada == null || entrada.trim().isEmpty){
      print('Entrada invalida. Por favor, informe um valor.');
    }
  } while (entrada == null || entrada.trim().isEmpty);

  return entrada.trim();
}

// Função para validar formato de data DD-MM-YYYY usando regex
String lerData(){
  String data;
  RegExp exp = RegExp(r'^\d{2}-\d{2}-\d{4}$'); // Dia-mes-ano

  do {
    data = lerEntrada('Data (DD-MM-YYYY): ');
    if (!exp.hasMatch(data)){
      print('Formato invalido! Use DD-MM-YYYY. Ex: 15-05-2025');
    }
  } while (!exp.hasMatch(data));

  return data;
}

// Função para validar formatar de hora HH:MM usando regex
String lerHora(){
  String hora;
  RegExp exp =  RegExp(r'^\d{2}:\d{2}$'); // Horas: Minutos

  do {
    hora = lerEntrada('Hora (HH-MM): ');
    if (!exp.hasMatch(hora)){
      print('Fomatp invalido! Use HH-MM. Ex: 10:10');
    }
  }while (!exp.hasMatch(hora));

  return hora;
}

void main(){
  Agenda agenda = Agenda();
  int opcao = 0;

  do {
    // Exibição do menu
    print('\n===== MENU AGENDA =====');
    print('1 - Adicionar Compromisso');
    print('2 - Lista Compromisso');
    print('3 - Sair');
    stdout.write('Escolha uma opção: ');

    // Conversão segura de entrada para inteiro
    String? entradaOpcao = stdin.readLineSync();
    opcao = int . tryParse(entradaOpcao ?? "") ?? 0;

    switch (opcao){
      case 1:
        print('\n--- NOVO COMPROMISSO ---');

        // Coleta e validação dos dados
        String titulo = lerEntrada('Titulo: ');
        String data = lerData();
        String hora = lerHora();
        String descricao = lerEntrada('Descrição: ');

        // Criação de objeto Comprmisso
        Compromisso novo = Compromisso(
          titulo: titulo,
          data: data,
          hora: hora,
          descricao: descricao
        );

        // Adicionando a agenda
        agenda.adicionaCompromisso(novo);
        break;
      
      case 2:
        // Listar compromissos cadastrados
        agenda.listarCompromissos();
        break;

      case 3:
        print('\nEncerrando o programa...');
        break;
      
      default:
        print('\nOpção invalida. Tente novamente.');
    }
    // Faz com que o programa continue repetindo o menu enquanto a
    // Variavel opcao for diferente de 3.
  } while (opcao != 3);
}