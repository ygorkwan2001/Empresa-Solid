import 'package:empresa/models/pessoa.model.dart';
import 'package:empresa/enums/categorias.enum.dart';

import '../mixins/atribFuncionario.mixin.dart';

abstract class Funcionario extends Pessoa with AtribGeral {
  String? matricula;
  String? setor;
  String? funcao;
  String? admissao;

  Funcionario(
      {required super.nome,
      required super.idade,
      required this.matricula,
      required this.setor,
      required this.funcao,
      required this.admissao,
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

  void chamaCategoria(String? atribuicao) {
    Categoria funcao = Categoria.fromValue(atribuicao!);
    // ignore: avoid_print
    print("Desenvolvedor: ${funcao.value}");
  }

  @override
  void revisarProjeto() {
    // ignore: avoid_print, unnecessary_brace_in_string_interps
    print("${funcao} está revisando o projeto");
  }
}
