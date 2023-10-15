
class CalculatorIMC {
  
  static calcularIMC(double peso, double altura) {
    altura = altura / 100;
    double imc = peso / (altura * altura);
    return imc;
  }

  static classificarIMC(double imc) {
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc < 16.9) {
      return "Magreza moderada";
    } else if (imc < 18.4) {
      return "Magreza leve";
    } else if (imc < 24.9) {
      return "Saudável";
    } else if (imc < 29.9) {
      return "Sobrepeso";
    } else if (imc < 34.9) {
      return "Obesidade grau I";
    } else if (imc < 39.9) {
      return "Obesidade grau II (SEVERA)";
    } else {
      return "Obesidade grau III (MÓRBIDA)";
    }
  }
}
