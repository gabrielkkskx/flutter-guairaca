import 'package:flutter/material.dart';

class Saudacao extends StatelessWidget{
  final String nome;
  final Color? color;

  const Saudacao({super.key, required this.nome, this.color,});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Olá $nome, Bem vindo a UniGuairacá',
        style: TextStyle(fontSize: 20, color: color ?? Colors.white,  ),
      ), //Text
    ); //Padding
  }
}