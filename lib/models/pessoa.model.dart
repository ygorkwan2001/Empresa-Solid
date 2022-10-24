abstract class Pessoa {
  String? nome;
  String? idade;
  String? rua;
  String? bairro;
  String? numero;
  String? cidade;
  String? estado;
  String? cpf;
  String? rg;
  String? email;
  String? telefone;

  Pessoa(
      {required this.nome,
      required this.idade,
      required this.rua,
      required this.bairro,
      required this.numero,
      required this.cidade,
      required this.estado,
      required this.cpf,
      required this.rg,
      required this.email,
      required this.telefone});

  @override
  String toString() {
    return "Nome: $nome, Idade: $idade, Rua: $rua,"
        "Bairro: $bairro, Numero: $numero,"
        "Cidade: $cidade, Estado: $estado, Cpf: $cpf, Email: $email, Telefone: $telefone";
  }
}
