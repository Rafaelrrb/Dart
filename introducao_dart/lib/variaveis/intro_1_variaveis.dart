void main() {
  String nome = 'Rafael';
  int idade = 38; // todos os tipos são class
  double salario = 200.0;
  num qualquerNumero = 1.0; // aceita qualquer tipo de numero

  var nomeVar =
      'Rafael'; // usar qunado sua variavel já for receber um valor assim vc não precisa definir um tipo
  var idadeVar = 30;

  String nomeObrigatori = 'obrigatorio';
  String? nomeNaoObrigatorio =
      null; // a ? define que esse campo não é obrigatorio pode ser atibuido null

  dynamic umValorQualquer =
      ''; // pode assumir qualquer tipo (numero string null)
  umValorQualquer = 1;
  umValorQualquer = 'Rafa';

  idadeVar.abs(); // abs() funcina apenas em tipos numericos

  // vai ser uma variaver do tipo dynamic
  //semTipo.abs();  como não tem tipo pode ser usado
}
