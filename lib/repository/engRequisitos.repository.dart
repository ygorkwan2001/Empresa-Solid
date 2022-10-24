import 'package:empresa/mixins/atribFuncionario.mixin.dart';
import 'package:empresa/models/funcionario.model.dart';

class EngRequisitos extends Funcionario with AtribEngRequisitos, AtribGeral {
  EngRequisitos(
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
  void criarDocumentacao() {
    // ignore: avoid_print
    print("Engenheiro de requisitos está criando a documentação");
  }

  @override
  void revisarDocumentacao() {
    // ignore: avoid_print
    print("Engenheiro de requisitos está revisando a documentação");
  }
}
