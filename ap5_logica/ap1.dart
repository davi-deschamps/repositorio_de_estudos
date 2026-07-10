void main() {
  // Chamando a função
  final listaDeImpares = extrairImparesAte(10);

  // Imprimindo usando o for in
  for (final numero in listaDeImpares) {
    print('Impar: $numero');
  }
}

// Função que gera os numeros impares 
List<int> extrairImparesAte(int limiteMaximo) {
  var numeroAtual = 0;
  var imparesEncontrados = <int>[];

  // Usando while repetindo até o limite maximo
  while (numeroAtual < limiteMaximo) {
    
    // o .isOdd' verifica se o número é ímpar
    // Se for é adicionamos na lista se não o if ignora
    if (numeroAtual.isOdd) {
      imparesEncontrados.add(numeroAtual);
    }
    
    // imcrementa +1 no contador para não rodar infinitamente
    numeroAtual++; 
  }

  return imparesEncontrados;
}