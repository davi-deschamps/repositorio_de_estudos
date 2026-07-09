void main() {
  final precoOriginal = 10.0;
  final precoVendido = 7.0;

  // Poderia imprimir usando .toInt() para ficar 10 e não 10.0
  print('O produto custava ${precoOriginal} reais, foi vendido por ${precoVendido} reais.');

  // Chamando a função que va calcular
  final porcentagemDesconto = calcularDesconto(precoOriginal, precoVendido);

  // Imprimindo o resultado final
  print('O desconto dado foi $porcentagemDesconto%.');
}

// Função que calcula o desconto 
int calcularDesconto(double original, double comDesconto) {
  // usamos a divisão inteira ~/ para fazer a divisão e não pegar as casas decimais 
  // retornando um valor inteiro 
  final porcentagemPaga = (comDesconto * 100) ~/ original;

  // Faz a subtração da porcentagemPaga - 100 que a diferença vai ser o desconto 
  return 100 - porcentagemPaga;
}