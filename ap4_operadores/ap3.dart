void main() {
  // Criadno lista de nomes 
  final listaDeNomes = [
    'Davi',
    'Charlote',
    'Wile',
    'Beto',
    'Juli',
    'Duda',
    'kika',
  ];

  // Chamando a função para remover o nome
  final listaAtualizada = removerItemDaLista(
    lista: listaDeNomes,
    itemParaRemover: 'kika',
  );

  // imprimindo lista atualizada
  for (final nome in listaAtualizada) {
    print('Item: $nome');
  }
}

// Função de remoção
// A lista e o item são opcionais porem o retorno não pode ser null
List<String> removerItemDaLista({
  List<String>? lista,
  String? itemParaRemover,
}) {
  
  // operador de acesso seguro ?. 
  // se a lista existir, chame o metodo remove() se for nula, não faça nada
  lista?.remove(itemParaRemover);

  // operador de coalescência nula ?? 
  // tente retornar a lista se a lista for nula, retorne uma lista vazia []
  return lista ?? [];
}