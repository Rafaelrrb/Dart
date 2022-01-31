void main() {
  var funcaoSoma = soma;

  soma(10, 10);
  funcaoSoma(10, 10);

  var funcaoAnonima = (int x, int y) {
    return x + y;
  };

  print(funcaoAnonima(10, 10));
}

int soma(int x, int y) {
  return x + y;
}
