// H - Cálculo de velocidade média: Faça um programa que receba as 
// distâncias percorridas a cada intervalo de tempo e calcule a velocidade média total do percurso. 

import 'dart:io';

void main(){
    print('='*70);
    print('Cálculo de velocidade média');
    print('='*70);
while(true){
    print('');

    double distanciaTotalKm = 0;
    double tempoTotalHoras = 0;

    for (int i = 1; i <= 4; i++) {
      
      // Distância
      stdout.write('Informe a distância percorrida no trecho $i (em metros): ');
      String? entradaDist = stdin.readLineSync();
      double? distancia = double.tryParse(entradaDist ?? '');
      if (distancia == null || distancia <= 0) {
        print('Valor inválido!');
        i--;
        continue;
      }

      // Tempo
      stdout.write('Informe o tempo gasto no trecho $i (em minutos): ');
      String? entradaTempo = stdin.readLineSync();
      double? tempo = double.tryParse(entradaTempo ?? '');
      if (tempo == null || tempo <= 0) {
        print('Valor inválido!');
        i--;
        continue;
      }
      print('');

      // Converte e acumula
      distanciaTotalKm += distancia / 1000; // metros → km
      tempoTotalHoras += tempo / 60;        // minutos → horas
    }


    double velocidadeMediaKmH = distanciaTotalKm / tempoTotalHoras;
    double velocidadeMediaMph = (distanciaTotalKm * 1000) / tempoTotalHoras;

    print('');
    print('Velocidade média total: ${velocidadeMediaKmH.toStringAsFixed(2)} km/h');
    print('Velocidade média total: ${velocidadeMediaMph.toStringAsFixed(2)} metros por hora');
    print('');

    print('.'*70);
    while(true){
      stdout.write('Deseja continuar? (SIM/NAO)');
      String? escolha = stdin.readLineSync()?.toUpperCase();

      if(escolha == null){
        print('Valor invalidos!');
        continue;
      }

      if(escolha == "SIM"){
        print('Continuando programa');
        print('.'*70);
        break;
      }else if(escolha == "NAO"){
        print('Encerrando programa');
        print('.'*70);
        return;
      }else{
        print('Valor invalido');
        continue;
      }
    }
  }
}