import 'dart:convert';
// import 'dart:ffi';
import 'dart:io';

class ConsoleUtils {
  static String lerStringPrintTexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoublePrintTextoComSaida(String texto, String valorSaida) {
    do {
      try {
        var value = lerStringPrintTexto(texto);
        if (value == valorSaida) {
          return null;
        }
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }

  static double? lerDoublePrintTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}