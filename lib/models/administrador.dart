import 'usuario.dart';

class Administrador extends Usuario {
  String _cargo;

  Administrador({
    required super.nome,
    required super.email,
    required super.senha,
    required String cargo,
  }) : _cargo = cargo;

  // Getters e Setters
  String get cargo => _cargo;
  set cargo(String novoCargo) {
    _cargo = novoCargo;
  }

  @override
  void exibirInformacoes() {
    print('Nome: $nome Email: $email Senha: $senha Cargo: $cargo');
  }
}