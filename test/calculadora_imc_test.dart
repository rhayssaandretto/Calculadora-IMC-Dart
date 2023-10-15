import 'package:calculadora_imc/models/calculator.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Quando calcular IMC, retornar resultado correto', () {
    expect(CalculatorIMC.calcularIMC(49, 163), equals(18.442545824080696));
  });
}
