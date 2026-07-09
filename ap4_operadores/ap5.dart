void main() {
  // inicializando o mapa com os nome e idades que podem ser null Map<String, int?>
  final bancoDeIdades = {
    "Nelson": null,
    "Jane": null,
    "Jack": 16,
    "Rupert": 37,
    "Andy": 13,
    "Kim": 27,
    "Robert": 31,
  };

  // for para percorrer os nomes 
  for (final nomeDaPessoa in bancoDeIdades.keys) {
    
    // pegando a idade correspondente ao nome 
    final idadeDaPessoa = bancoDeIdades[nomeDaPessoa];

    // operador de coalescência nula ( ?? ) 
    // ve se a idadeDaPessoa tem um número lá dentro, se sim ele imprime o numero
    // Se a variável for null, ele imprime o texto 
    print('$nomeDaPessoa - ${idadeDaPessoa ?? 'idade nao informada'}');
  }
}