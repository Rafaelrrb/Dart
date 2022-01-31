import 'dart:convert';

import 'package:http/http.dart';

void main() {
  // get(Uri.parse('https://viacep.com.br/ws/01001000/json/'))
  //     .then((value) => {print('Termino de buscar')})
  //     .catchError((error) {
  //   print('Teve erro');
  // });

  buscarCEP();
}

Future<void> buscarCEP() async {
  try {
    final resultado =
        await get(Uri.parse('https://viacep.com.br/ws/01001000/json/'));

    print(resultado.body);
    var cep = jsonDecode(resultado.body); // convertendo o json
    print(cep); // pegando tudo
    print(cep['cep']); // pegando um campo
  } catch (e) {
    print('Erro');
  }
}
