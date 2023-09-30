import 'dart:io';

import 'package:desafio_imc/classes/Pessoa.dart';

void main() {
  try {
    Pessoa pessoa = preencherDadosPessoa();
    double imc = pessoa.calcularIMC();

  } catch (e) {
    print('Erro: $e');
  }
}

Pessoa preencherDadosPessoa() {
  print('Digite o nome:');
  String? nome = stdin.readLineSync();

  print('Digite o peso (em kg):');
  double? peso = double.tryParse(stdin.readLineSync() ?? '');

  print('Digite a altura (em metros):');
  double? altura = double.tryParse(stdin.readLineSync() ?? '');

  return Pessoa(nome: nome, peso: peso, altura: altura);
}
