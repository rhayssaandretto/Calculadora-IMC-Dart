import 'dart:io';

import 'package:calculadora_imc/exceptions/altura_invalida_exception.dart';
import 'package:calculadora_imc/exceptions/nome_invalido_exception.dart';
import 'package:calculadora_imc/exceptions/peso_invalido_exception.dart';
import 'package:calculadora_imc/models/console_utils.dart';
import 'package:calculadora_imc/models/pessoa.dart';

void execute() {
  print("-------------------");
  print("Calculadora de IMC!");
  print("-------------------");

  String nome = retornarNome();

  double? peso;
  try {
    peso = ConsoleUtils.lerDoublePrintTexto("Informe seu peso em quilos: ");
    if (peso == null) {
      throw PesoInvalidoException();
    }
  } on PesoInvalidoException catch (e) {
    print(e);
    exit(0);
  }

  double? altura;
  try {
    altura =
        ConsoleUtils.lerDoublePrintTexto("Informe sua altura em centímetros: ");
    if (altura == null) {
      throw AlturaInvalidaException();
    }
  } on AlturaInvalidaException catch (e) {
    print(e);
    exit(0);
  }

  Pessoa pessoa = Pessoa(nome, peso, altura);

  double imc = pessoa.calcularIMC();
  String classificacao = pessoa.classificarIMC();

  print(
      "O usuário ${pessoa.getNome()}, possui IMC de ${imc.toStringAsFixed(2)} com classificação $classificacao");
}

String retornarNome() {
  String nome;
  try {
    nome = ConsoleUtils.lerStringPrintTexto("Olá! Digite seu nome: ");
    if (nome.trim() == "") {
      //se a string ficar vazia após a verificação de espaços em branco significa que é inválida
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException catch (e) {
    print(e);
    exit(0);
  }
  return nome;
}
