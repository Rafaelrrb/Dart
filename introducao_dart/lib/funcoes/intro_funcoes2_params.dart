void main() {
  somaInteiros(10, 10);
  somaInteirosOpicional();
  somaInteirosOpicionalDefault();

  // pode passar em qualquer ordem
  somaInteirosNomeados(numero1: 10, numero2: 10);
  somaInteirosNomeados(numero2: 10, numero1: 10);
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

// parametros de entrada opicional
int somaInteirosOpicional([int? numero1, int? numero2]) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }

  return 0;
}

// parametros default
int somaInteirosOpicionalDefault([int numero1 = 10, int numero2 = 10]) {
  return numero1 + numero2;
}

// parametros nomeados são sempre opicionais
int somaInteirosNomeados({int? numero1, int? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }

  return 0;
}

// parametros obrigatorios
int somaInteirosNomeadosObrigatorios(
    {required int numero1, required int numero2}) {
  return numero1 + numero2;
}

// não pode misturar nomeados e opcionais
// não pode intercalar sempre 1° o obrigatorios e depois opcionais ou nomeados
void misturando(int numero, [String? nome]) {}
