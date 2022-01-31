void main() {
  final retorno = somaInteiros(10, 10);
  final retornoDynamic = somaInteirosDynamic(10, 10);

  print(retorno);
  print(retornoDynamic);
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

// sempre declare tipos para garantir o controle de tipagem e não gerar erros
somaInteirosDynamic(int numero1, int numero2) {
  return numero1 + numero2;
}
