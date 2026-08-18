import 'package:flutter/material.dart';
import 'models/usuario.dart';
import 'models/administrador.dart';
import 'models/usuario_comum.dart';

void main() {
  // Tipos basicos
  String nome = 'Gabriel';
  int idade = 18;
  double altura = 1.70;
  bool ativo = true;

  var cidade = 'Guarapuava'; // tipo inferido, pode reatribuir
  final data = '04 de Julho'; // Valor definido em execução, imutavel
  const limiteMaximo = 100; // valor fixo em tempo de compilaçao

  // Nullable e operador de coalescencia nula (??)
  int? nota;
  int notaFinal = nota ?? 0;

  // Operadores aritmeticos
  int a = 10;
  int b = 20;
  print('Soma: ${a + b}');
  int c = 15, d = 25, e = 20;

  // Operadores relacionais e lógicos  
  bool podeVotar = idade >= 16 && idade <= 120;

  // Operador de atribuição composta
  int contador = 0;
  contador += 2;
  contador *= 4;

  List<Usuario> usuarios = [
    Administrador(
      nome: 'Gabriel',
      cargo:'Zero',
      senha: '1234',
      email: 'gabriel@email',
    ),

    UsuarioComum(
      nome: 'Jorge',
      email: 'jorge67@email',
      senha: '1234',
      vale: '750',
    ),
  ];

  for(var usuario in usuarios){
    usuario.exibirInformacoes();
  }

  runApp(const MyApp());
}

void estruturaControle() {
  // For tradicional
  for (var i = 1; i <= 10; i++) {
    print(i);
  }

  // For em lista
  var times = ['Palmeiras', 'Palmeiras', 'Palmeiras', 'Corinthians'];
  for (var time in times) {
    print('Time: $time');
  }

  // While e do while
  int tentativas = 0;
  while (tentativas < 3) {
    print('Tentativas ${tentativas}');
    tentativas++;
  }

  int senha = 0;
  do {
    senha++;
  } while(senha < 1);

}

void lista() {
  List<String> frutas = ['maçã', 'banana', 'uva', 'pessego'];

  for (var fruta in frutas) {
    print(fruta);
  }
}

void mapExemplo() {
  Map<String, int> notas = {'Ana': 8, 'Bruno': 6};

  notas.forEach((aluno, nota) {
    print('$aluno: $nota');
  });
}

void setExemplo() {
  Set<int> idsUnicos = {1, 2, 3};

  print('Ids unicos $idsUnicos');
}

class MyApp extends StatelessWidget { //extende o widget imutado
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Scaffold(
        body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Saudacao(nome: "Matheus"),
            Saudacao(nome: "Gabriel"),
          ],
         ), //Column
        ), //Center
      ), // Scaffold
    ); //MaterialApp
  }
}