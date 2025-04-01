import 'package:flutter/material.dart';

class TelaResposta extends StatelessWidget {
  final String? respostaTelaUm;
  final String? respostaTelaDois;
  final String? respostaTelaTres;

  const TelaResposta({
    super.key,
    required this.respostaTelaUm,
    required this.respostaTelaDois,
    required this.respostaTelaTres,
  });

  @override
  Widget build(BuildContext context) {
    const String respostaCorretaTelaUm = "1";
    const String respostaCorretaTelaDois = "1";
    const String respostaCorretaTelaTres = "1";

    String resultado1 = (respostaTelaUm == respostaCorretaTelaUm) ? "Correto" : "Errado";
    String resultado2 = (respostaTelaDois == respostaCorretaTelaDois) ? "Correto" : "Errado";
    String resultado3 = (respostaTelaTres == respostaCorretaTelaTres) ? "Correto" : "Errado";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("RESPOSTAS"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("1° Questão: $resultado1", style: TextStyle(fontSize: 20)),
          Text("2° Questão: $resultado2", style: TextStyle(fontSize: 20)),
          Text("3° Questão: $resultado3", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}

