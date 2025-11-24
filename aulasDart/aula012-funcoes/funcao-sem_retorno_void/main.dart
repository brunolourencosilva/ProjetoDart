import 'dart:io';

// Função para simular envio de email
void enviarEmail(String destinatario,String assunto,String msg){
  print('='*70);
  print('Enviando email para: $destinatario');
  print('Assunto: $assunto');
  print('Corpo: $msg');
  print('-'*70);
  print('Email enviando com sucesso!!');
  print('-'*70);
  print('');
}

void main(){
  print('\nEXEMPLO DE FUNÇÃO VOID COM VALIDAÇÃO DE DESTINATARIO');
  print('-'*70);
  while(true){
    // Leitura do destinatario
    stdout.write('Digite o destinataria: ');
    String destinatario = (stdin.readLineSync() ?? '').trim();
    
    if (destinatario.isEmpty){
      print('Erro: destinatario não pode ficar vazio! Tente novamente.\n');
      continue; // Volta para o inicio do loop principal
    }

    //Leitura do assunto
    stdout.write('Digite o assunto: ');
    String assunto = (stdin.readLineSync() ?? '').trim();
    if (assunto.isEmpty)assunto = 'Sem assunto';
    // Leitura da mensagem
    stdout.write('Digite o corpo da mensagem: ');
    String msg = (stdin.readLineSync()??'').trim();
    if (msg.isEmpty) msg = "Mensagem vazio";

    // Enviar email
    enviarEmail(destinatario, assunto, msg);

    // Perguntar se deja continuar
    while(true){
      stdout.write('Deseja enviar outro email? (s/n)');
      String reposta = (stdin.readLineSync()??'').trim().toLowerCase();

      if (reposta == 's'){
        break; // Volta para o loop principal
      }else if (reposta == 'n'){
        print('Encerando o programa...');
        return; // encerra o programa
      }else{
        print('Resposta invalida! Digite "s" para sim ou "n" para não.');
      }
    }
    print('');
    }  
}