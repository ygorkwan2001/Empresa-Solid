import 'dart:ffi';

import 'package:empresa/models/funcionario.model.dart';

import '../mixins/atribFuncionario.mixin.dart';

class Desenvolvedor extends Funcionario with AtribDesenvolvedor, AtribGeral {
  Desenvolvedor(
      {required super.nome,
      required super.idade,
      required super.matricula,
      required super.admissao,
      required super.funcao,
      required super.setor,
      required super.cidade,
      required super.bairro,
      required super.rua,
      required super.estado,
      required super.numero,
      required super.cpf,
      required super.rg,
      required super.email,
      required super.telefone});

  @override
  String toString() {
    return "Nome: $nome, Idade: $idade, Matricula: $matricula,"
        "Setor: $setor, funcao: $funcao, Admissao: $admissao, Cidade: $cidade"
        "Bairro: $bairro, Rua: $rua, Estado: $estado, Numero: $numero, cpf: $cpf, rg: $rg, Email: $email, Telefone: $telefone";
  }

  double pagamento() {
    return 3000.0;
  }

  @override
  void passarRaiva() {
    // ignore: avoid_print
    print("Desenvolvedor está passando raiva");
  }

  @override
  void programar() {
    // ignore: avoid_print
    print("Desenvolvedor está programando");
  }

  @override
  void revisarProjeto() {
    // ignore: avoid_print, unnecessary_brace_in_string_interps
    print("${funcao} está revisando o projeto");
  }
}
