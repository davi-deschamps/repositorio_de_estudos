import 'dart:math';

void main() {
  final sorteador = Random();

  // Gerando os numeros aleatorios 
  // nextInt(901) sorteia de 0 a 900 e somando 100, o resultado fica entre 100 e 1000 
  final limiteSorteado = sorteador.nextInt(901) + 100;

  // Chamando a função ja com o limite 
  final resultadoSoma = calcularSomaDosPares(limiteSorteado);

  // Imprimindo a menssagem 
  print('A soma dos números pares entre 0 e $limiteSorteado e $resultadoSoma');
}

// Função da soma dos pares 
int calcularSomaDosPares(int maximo) {
  // A variável acumulador começa em 0 e vai crescendo a cada volta do laço
  int acumulador = 0;

  // o laço for vai de 1 até o limite 
  for (int numeroAtual = 1; numeroAtual <= maximo; numeroAtual++) {
    
    // verifica se o numero é par usando .isEven
    if (numeroAtual.isEven) {
      // Se for par pegamos o valor que já está no acumulador e soma com o numero atual
      acumulador += numeroAtual;
    }
  }

  // retorna o valor ao acumulador 
  return acumulador;
}