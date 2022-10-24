enum Categoria {
  estagiario("Leva a culpa"),
  contratado("Faz tudo"),
  consultor("Ganha dinheiro"),
  none("Não registrado");

  final String value;

  const Categoria(this.value);

  factory Categoria.fromValue(String name) {
    return values.firstWhere((categoria) => categoria.name == name, orElse: () => Categoria.none);
  }
} 