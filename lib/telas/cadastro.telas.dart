import 'package:empresa/repository/desenvolvedor.repository.dart';
import 'package:empresa/repository/gerente.repository.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _idadeController = TextEditingController();
  TextEditingController _matriculaController = TextEditingController();
  TextEditingController _admissaoController = TextEditingController();
  TextEditingController _funcaoController = TextEditingController();
  TextEditingController _setorController = TextEditingController();
  TextEditingController _cpfController = TextEditingController();
  TextEditingController _rgController = TextEditingController();
  TextEditingController _ruaController = TextEditingController();
  TextEditingController _bairroController = TextEditingController();
  TextEditingController _numeroController = TextEditingController();
  TextEditingController _cidadeController = TextEditingController();
  TextEditingController _estadoController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
            colors: [Colors.blue, Color.fromARGB(255, 32, 200, 200)],
          ))),
          elevation: 0,
          title: const Text(
            "CADASTRO EMPRESA",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),

        // Parte de Preenchimento de dados
        body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  //
                  TextFormField(
                    controller: _nomeController,
                    decoration:
                        const InputDecoration(labelText: "Nome Completo"),
                  ),
                  //
                  TextFormField(
                    controller: _idadeController,
                    decoration: const InputDecoration(labelText: "Idade"),
                  ),
                  //
                  TextFormField(
                    controller: _matriculaController,
                    decoration: const InputDecoration(labelText: "Matricula"),
                  ),
                  //
                  TextFormField(
                    controller: _admissaoController,
                    decoration: const InputDecoration(labelText: "Admissão"),
                  ),
                  //
                  TextFormField(
                    controller: _setorController,
                    decoration: const InputDecoration(labelText: "Setor"),
                  ),
                  //
                  TextFormField(
                    controller: _funcaoController,
                    decoration: const InputDecoration(labelText: "Função"),
                  ),
                  TextFormField(
                    controller: _ruaController,
                    decoration: const InputDecoration(labelText: "Rua"),
                  ),
                  TextFormField(
                    controller: _bairroController,
                    decoration: const InputDecoration(labelText: "Bairro"),
                  ),
                  TextFormField(
                    controller: _numeroController,
                    decoration: const InputDecoration(labelText: "Numero"),
                  ),
                  TextFormField(
                    controller: _cidadeController,
                    decoration: const InputDecoration(labelText: "Cidade"),
                  ),
                  TextFormField(
                    controller: _estadoController,
                    decoration: const InputDecoration(labelText: "Estado"),
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: "Email"),
                  ),
                  TextFormField(
                    controller: _telefoneController,
                    decoration: const InputDecoration(labelText: "Telefone"),
                  ),
                  TextFormField(
                    controller: _rgController,
                    decoration: const InputDecoration(labelText: "Rg"),
                  ),
                  TextFormField(
                    controller: _cpfController,
                    decoration: const InputDecoration(labelText: "Cpf"),
                  ),
                  //

                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: ElevatedButton(
                      onPressed: () async {
                        Desenvolvedor desenvolvedor = Desenvolvedor(
                          nome: _nomeController.text,
                          idade: _idadeController.text,
                          matricula: _matriculaController.text,
                          admissao: _admissaoController.text,
                          funcao: _funcaoController.text,
                          setor: _setorController.text,
                          cpf: _cpfController.text,
                          rg: _rgController.text,
                          rua: _ruaController.text,
                          bairro: _bairroController.text,
                          numero: _numeroController.text,
                          cidade: _cidadeController.text,
                          estado: _estadoController.text,
                          email: _emailController.text,
                          telefone: _telefoneController.text,
                        );
                        print(desenvolvedor);
                        Gerente gerente = Gerente(
                            nome: _nomeController.text,
                            idade: _idadeController.text,
                            matricula: _matriculaController.text,
                            admissao: _admissaoController.text,
                            funcao: _funcaoController.text,
                            setor: _setorController.text,
                            cidade: _cidadeController.text,
                            bairro: _bairroController.text,
                            rua: _ruaController.text,
                            estado: _estadoController.text,
                            numero: _numeroController.text,
                            cpf: _cpfController.text,
                            rg: _rgController.text,
                            email: _emailController.text,
                            telefone: _telefoneController.text);
                        // ignore: avoid_print
                        print(gerente);
                      },
                      child: Text("Cadastrar Dados"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(300, 40),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
