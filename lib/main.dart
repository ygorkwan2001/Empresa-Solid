import 'package:empresa/repository/desenvolvedor.repository.dart';
import 'package:empresa/telas/cadastro.telas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  /*
  Desenvolvedor desenvolvedor1 = Desenvolvedor(
      nome: "nome",
      idade: "idade",
      matricula: "matricula",
      admissao: "admissao",
      funcao: "funcao",
      setor: "setor",
      rua: "rua",
      bairro: "bairro",
      numero: "numero",
      cidade: "cidade",
      estado: "estado",
      cpf: "cpf", 
      rg: "rg"
      );

  print(desenvolvedor1);
  */
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Empresa Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CadastroPage(),
    );
  }
}
