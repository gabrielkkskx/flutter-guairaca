import 'package:flutter-guairaca/models/usuario.dart';

class Administrador extends Usuario{
    String _cargo;

    Administrador({
        required super.nome,
        required super.email,
        required super.senha,
        required String cargo,
    }) :_cargo = cargo

    //Getters e Setters
    String get cargo => _cargo;
    set cargo(String novoCargo) {_cargo = novoCargo;}

    @override
    void _exibirInformacoes(){
        print('Nome: ${super.nome} Email: ${super.email} Senha ${super.senha} Cargo ${cargo}');
    }
    
}