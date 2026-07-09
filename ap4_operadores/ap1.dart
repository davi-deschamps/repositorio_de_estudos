void main() {
  // criando a lista com os anos
  final anosParaTestar = [2016, 1988, 2000, 2100, 2300, 1993];

  // for pra passar por cada ano da nossa lista
  for (final anoAtual in anosParaTestar) {
    // utilizando o Operador Ternário  ? :  para montar a resposta sendo condição ? verdadeiro : falso
    // Se a função retornar true, ele escolhe a primeira frase e se false a segunda
    final mensagem = ehAnoBissexto(anoAtual)
        ? 'O ano $anoAtual eh bissexto'
        : 'O ano $anoAtual nao eh bissexto';

    print(mensagem);
  }
}

// funça de validação
bool ehAnoBissexto(int ano) {
  // usando modulo % para ver o resto da divizão e igualdeade == para ver se esse resto é igual a 0
  // Aqui se o ano for divisível por 100 (resto zero), ele é uma virada de século.
  if (ano % 100 == 0) {
    // Viradas de século só são bissextas se o resto da divisão por 400 também for zero.
    return (ano % 400) == 0;
  } else {
    // para os anos comuns, basta que o resto da divisão por 4 seja zero.
    return (ano % 4) == 0;
  }
}
