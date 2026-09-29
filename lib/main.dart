import 'package:flutter/material.dart';
import 'components/profile_card.dart';
import 'components/saudacao.dart'; 
import 'models/usuario.dart';
import 'models/administrador.dart';
import 'models/usuario_comum.dart';


class MyApp extends StatelessWidget { //extende o widget imutado
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Aula componentes')),
        body: ListView(
          children: const [
            ProfileCard(name: 'Gabriel', role: 'sla'),
            ProfileCard(name: 'Six', role: 'Seven'),
            ProfileCard(name: 'Repo', role: 'sição'),
          ],
        ),
      ),
    );
  }
}