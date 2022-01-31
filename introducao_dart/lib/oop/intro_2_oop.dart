import 'package:introducao_dart/introducao_dart.dart';

void main() {
  var camiseta =
      Camiseta('preta', 'M', 'Topper', 'Gola'); // não precisa usar new
  var camisetaSemCor = Camiseta.semCor('M', 'Topper', 'Gola');
  var camisetaParametrosNomeados = Camiseta.parametroNomeados(
      tamanho: "tamanho", marca: "marca", modelo: "modelo");
  var camisetaParametroNomeadosPrivados = Camiseta.parametroNomeadosPrivado(
      tamanho: "tamanho", marca: "marca", modelo: "modelo", cor: 'Verde');
  // camiseta.tamanho = 'M';
  // camiseta.marca = 'Topper';
  // camiseta.modelo = 'Gola';
  // camiseta.cor = 'Verde';

  print('A cor da camiseta é ${camiseta.cor}');
  print('A camisa  ${camiseta.tipoDeLavagem()}');
}

class Camiseta {
  // caracteristicas
  String _cor; // _ denota que a variavel é privada
  String tamanho;
  String marca;
  String modelo;

  // construtor
  // Camiseta(String cor,String tamanho ,String marca,
  // String modelo) :
  //   _cor = cor;
  //   this.tamanho = tamanho;
  //   this.marca= marca;
  //   this.modelo = modelo;

  // forma correta de fazer o contrutor
  Camiseta(this._cor, this.tamanho, this.marca, this.modelo);

  // construtor nomeado
  Camiseta.semCor(this.tamanho, this.marca, this.modelo) : _cor = 'Azul';

  // parametro opcional
  Camiseta.parametroOpcional(this.tamanho, this.marca, this.modelo,
      [this._cor = 'Azul']);

  // parametro nomeados
  Camiseta.parametroNomeados(
      {required this.tamanho, required this.marca, required this.modelo})
      : _cor = 'Azul';

  Camiseta.parametroNomeadosPrivado(
      {required this.tamanho,
      required this.marca,
      required this.modelo,
      required String cor})
      : _cor = cor; // parametros privados não pode ser nomeados

  // não se usa set e get se não tiver regras de negocio
  set cor(String cor) {
    _cor = cor;
  }

  String get cor {
    return _cor;
  }

  // comportamentos
  String tipoDeLavagem() {
    if (marca == 'Topper') {
      return 'pode ser lavar na maquina';
    }

    return 'Não pode ser lavar na maquina';
  }
}
