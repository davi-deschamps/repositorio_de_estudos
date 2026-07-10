import 'dart:math';

void main() {
  // Inicializa o gerador de números aleatórios com o maximo de 26
 // const int maximo = 27;
  final sorteador = Random();

  // Usando o laço for enquanto for menor que 5 rode o bloco e some 1
  for (var contador = 0; contador < 26; contador++) {
    // Sorteia um número de 0 a 26
    final numeroAleatorio = sorteador.nextInt(26)+1;

    // Chama a  função passando o numero sorteado
    final letraCorrespondente = converterNumeroParaLetra(numeroAleatorio);

    // Imprime o resultado
    print('Numero $numeroAleatorio -> Letra $letraCorrespondente');
  }
}

// Função que converte
String converterNumeroParaLetra(int numero) {
  // Usaremos a Tabela ASCII
  // pois o computador n entende letras somente numeros e essa tabela faz a conversão de numeros para letras
  // o comando .codeUnitAt(0) pega esse número.
  final valorAsciiLetraA = 'A'.codeUnitAt(0);

  // Sabendo que A é 65 na tabela fazemos a matematica
  // Se o número sorteado for 1 fazemos 65 + 1 - 1 = 65 que é A
  // cada letras a mais exemplo se sortear o numeor 2 fazemos 65 + 2 - 1 = 66 que é B
  final novoCodigoAscii = valorAsciiLetraA + numero - 1;

  // O comando .fromCharCode() faz o inverso pega o numero e transforma na letra correspondente 
  return String.fromCharCode(novoCodigoAscii);
}

// obs: se sortear o numero 0 fica fora do alfabeto e vira o @ conforme a conversão da tabela 
// para corrigir comentei o // const int maximo = 27; e coloquei sorteador.nextInt(26)+1;