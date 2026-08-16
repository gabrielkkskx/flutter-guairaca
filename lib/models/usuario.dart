class Usuario {
  final String nome; // var tipo final só recebe um valor e não é editavel depois
  final String email;
  final String senha;

  Usuario({
    required this.nome,
    required this.email,
    required this.senha,
  });

  void exibirInformacoes() {
    print('Olá, meu nome é $nome, meu email: $email');
  }

  void _exibirInformacoes() {
    print('Olá, meu nome é $nome, meu email: $email');
  }
}