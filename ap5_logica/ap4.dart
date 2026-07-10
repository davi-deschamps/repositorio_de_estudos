void main() {
  final listaNomes = [
    "Joao",
    "Maria",
    "Pedro",
    "Maria",
    "Ana",
    "Joao",
    "Maria",
    "Fernanda",
    "Carlos",
    "Maria"
  ];

  final nome = 'Ana';
  
  // Chamamos a função passando a lista inteira e o nome que queremos buscar
  final quantidade = contarNome(listaNomes, nome);

  if (quantidade == 1) {
    print('O nome $nome foi encontrado 1 vez');
  } else if (quantidade > 0) {
    print('O nome $nome foi encontrado $quantidade vezes');
  } else {
    print('O nome nao foi encontrado');
  }
}

// Função que vai contar os nomes
int contarNome(List<String> nomes, String nomeBuscado) {
  var quantidadeEncontrada = 0;

  // o laço for-in para passar por cada item da lista
  for (final nomeAtual in nomes) {
    
    // comparador para ver se o nome da lista é igual ao nome buscado 
    if (nomeAtual == nomeBuscado) {
     // se sim acresentamos no contador 
      quantidadeEncontrada++;
    }
  }

  // retorna o total encontrado 
  return quantidadeEncontrada;
}