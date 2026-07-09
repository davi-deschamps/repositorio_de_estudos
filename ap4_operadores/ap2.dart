void main() {
  // Lista com os textos e numeros 
  final valoresEmTexto = [
    '10',
    '2XXL7',
    'JOJ0',
    '99',
    '381',
    'AD44',
    '47',
    '2B',
    '123',
    '78'
  ];

  // FUnção que vai fazer a conversão 
  final numerosConvertidos = extrairNumeros(valoresEmTexto);

  // imprimindo a lista convertida usando o .join(', ') para colocar virgula entre os numeros 
  print('Lista convertida: ${numerosConvertidos.join(', ')}');
}

// Função de conversão
// Recebe textos e devolve apenas números inteiros
List<int> extrairNumeros(List<String> textos) {
  final listaDeNumeros = <int>[];

  for (final textoAtual in textos) {
    // O metodo tryParse se ele conseguir ler o número ele retorna o numero
    // se tiver texto junto ele retorna null
    int? numeroExtraido = int.tryParse(textoAtual);

    // operador de atribuição condicional ??= 
    // se a variável da esquerda for null, atribua o valor da direita 
    numeroExtraido ??= 0;

    // add os numeros validos ou os 0 na lista 
    listaDeNumeros.add(numeroExtraido);
  }

  return listaDeNumeros;
}