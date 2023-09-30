class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  Pessoa({required String? nome, required double? peso, required double? altura}) {
    _nome = nome;
    _peso = peso;
    _altura = altura;

    if (_altura != null && _altura! <= 0) {
      throw Exception("Altura deve ser maior que zero.");
    }
  }

  double calcularIMC() {
    if (_peso != null && _altura != null) {
      return _peso! / (_altura! * _altura!);
    } else {
      throw Exception("Dados inválidos para calcular o IMC. Certifique-se de que peso e altura são valores válidos.");
    }
  }

  String? getNome() {
    return _nome;
  }

  double? getPeso() {
    return _peso;
  }

  double? getAltura() {
    return _altura;
  }
}