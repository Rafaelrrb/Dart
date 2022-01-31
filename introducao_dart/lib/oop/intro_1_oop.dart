void main() {
  var camiseta = Camiseta(); // não precisa usar new
  camiseta.tamanho = 'M';
  camiseta.marca = 'Topper';
  camiseta.modelo = 'Gola';
  camiseta.cor = 'Verde';

  print('A cor da camiseta é ${camiseta.cor}');
  print('A camisa  ${camiseta.tipoDeLavagem()}');
}

class Camiseta {
  // caracteristicas
  String? cor;
  String? tamanho;
  String? marca;
  String? modelo;

  // comportamentos
  String tipoDeLavagem() {
    if (marca == 'Topper') {
      return 'pode ser lavar na maquina';
    }

    return 'Não pode ser lavar na maquina';
  }
}
