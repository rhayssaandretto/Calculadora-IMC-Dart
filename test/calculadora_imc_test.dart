import 'package:calculadora_imc/models/calculator.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Quando calcular IMC, retornar resultado correto', () {
    expect(CalculatorIMC.calcularIMC(49, 163), equals(18.442545824080696));
  });

  test('Calcular imc 0', () {
    expect(CalculatorIMC.calcularIMC(0, 0), equals(3));
  });
}
