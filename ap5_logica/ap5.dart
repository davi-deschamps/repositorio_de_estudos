import 'dart:math';

void main() {
  const int maximo = 6;
  final random = Random();

  // Sorteia um numero de 0 a 5
  final opcao = random.nextInt(maximo);

  // O switch recebe a variavel que vmaos avaliar
  switch (opcao) {
    // agrupamento de Casos (Fall-through)
    case 1:
    case 2:
    case 3:
    case 4:
      print('Encontrado $opcao');
      break;

    // caso específico
    case 5:
      print('Encontrado final');
      break;

    // se sortear o 0 ele não cai nos case e sim direto pro default
    default:
      print('Opcao invalida');
  }
}
