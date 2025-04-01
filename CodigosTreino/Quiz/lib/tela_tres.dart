import 'package:flutter/material.dart';
import 'package:atividade2/tela_resposta.dart';

class TelaTres extends StatefulWidget {
  final String? respostaTelaUm;
  final String? respostaTelaDois;

  const TelaTres({super.key, 
  required this.respostaTelaUm,
  required this.respostaTelaDois});

  @override
  State<TelaTres> createState() => TelaTresState();
}

class TelaTresState extends State<TelaTres> {
  String? respostaTelaTres;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("3° QUESTÃO"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "Dassault-Rafale.jpg"
                ),
            ),
            Text("QUAL O PAÍS DE ORIGEM DO RAFALE ?"),

            //ALTERNATIVA 01
            RadioListTile(
              title: Text("RUSSIA"),
              value: "0",
              groupValue: respostaTelaTres,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaTres = value;
                    }),
                  },
            ),

            //ALTERNATIVA 02
            RadioListTile(
              title: Text("CANADÁ"),
              value: "2",
              groupValue: respostaTelaTres,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaTres = value;
                    }),
                  },
            ),

            //ALTERNATIVA 03
            RadioListTile(
              title: Text("ESTADOS UNIDOS DA AMÉRICA"),
              value: "3",
              groupValue: respostaTelaTres,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaTres = value;
                    }),
                  },
            ),

            //ALTERNATIVA 04
            RadioListTile(
              title: Text("BRASIL"),
              value: "4",
              groupValue: respostaTelaTres,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaTres = value;
                    }),
                  },
            ),

            //ALTERNATIVA 5
            RadioListTile(
              title: Text("FRANÇA"),
              value: "1",
              groupValue: respostaTelaTres,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaTres = value;
                    }),
                  },
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaResposta(
                      respostaTelaUm: widget.respostaTelaUm,
                      respostaTelaDois: widget.respostaTelaDois,
                      respostaTelaTres: respostaTelaTres,
                    )),
                );
              },
              child: Text("CONFERIR RESPOSTA"),
            ),
          ],
        ),
      ),
    );
  }
}
