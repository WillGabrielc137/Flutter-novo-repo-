import 'package:flutter/material.dart';
import 'package:prova_patrick/telaUm.dart';

void main(){
  runApp(const Prova());
}

class Prova extends StatelessWidget {
  const Prova({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Prova",
      home: telaUm(nome: '', idade: '',)
    );
  }
}