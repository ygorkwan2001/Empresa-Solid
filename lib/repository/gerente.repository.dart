import 'package:empresa/models/funcionario.model.dart';

import '../mixins/atribFuncionario.mixin.dart';

class Gerente extends Funcionario with AtribGerente, AtribGeral {
  Gerente(
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
    return 6000.0;
  }

  @override
  void contratar() {
    // ignore: avoid_print
    print("Gerente está contratando");
  }

  @override
  void delegar() {
    // ignore: avoid_print
    print("Gerente está delegando");
  }

  @override
  void demitir() {
    // ignore: avoid_print
    print("Gerente está demitindo");
  }

  @override
  void supervisionar() {
    // ignore: avoid_print
    print("Gerente está supervisionando");
  }
}
