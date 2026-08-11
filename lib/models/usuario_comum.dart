import 'package:flutter-guairaca/models/usuario.dart';

class usuario_comum extends usuario{
    String _vale;

    UsuarioComum({
        required super.nome,
        required super.email,
        required super.senha,
        required String vale
    }) : _vale = vale;

    //Getter e Setter vale
    String get vale => _vale;
    set vale(String novoVale) {_vale = novoVale;}

    @override
    void _exibirInformacoes(){
        print('Nome: ${super.nome} Email: ${super.email} Senha ${super.senha} Vale: $vale');
    }
}



