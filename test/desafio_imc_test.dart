import 'package:desafio_imc/classes/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Calculo do IMC', () {
    Pessoa pessoa = Pessoa(nome: 'Jocyanno', peso: 70, altura: 1.75);
    expect(pessoa.calcularIMC(), closeTo(22.86, 0.1));
  });

  test('Tratamento de dados inválidos', () {
    Pessoa pessoa = Pessoa(nome: 'Teste', peso: 70, altura: 0);
    expect(() => pessoa.calcularIMC(), throwsException);
  });
}
