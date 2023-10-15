import 'package:calculadora_imc/models/calculator.dart';

class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  double calcularIMC() {
    return CalculatorIMC.calcularIMC(_peso, _altura);
  }

  String classificarIMC() {
    double imc = calcularIMC();
    return CalculatorIMC.classificarIMC(imc);
  }
}
