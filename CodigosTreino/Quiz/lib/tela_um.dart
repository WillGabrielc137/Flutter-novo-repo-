import 'package:flutter/material.dart';
import 'package:atividade2/tela_dois.dart';

class TelaUm extends StatefulWidget {
  const TelaUm({super.key});

  @override
  State<TelaUm> createState() => TelaUmState();
}

class TelaUmState extends State<TelaUm> {
  String? respostaTelaUm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("1° QUESTÃO"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "gripen-brasil.jpg"
                ),
            ),
            Text("QUAL O NOME DESSE CAÇA ?"),

            //ALTERNATIVA 01
            RadioListTile<String>(
              title: Text("LOCKHEED MARTIN F-22 RAPTOR"),
              value: "0",
              groupValue: respostaTelaUm,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaUm = value;
                    }),
                  },
            ),

            //ALTERNATIVA 02
            RadioListTile<String>(
              title: Text("SAAB JAS 39 GRIPEN"),
              value: "1",
              groupValue: respostaTelaUm,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaUm = value;
                    }),
                  },
            ),

            //ALTERNATIVA 03
            RadioListTile<String>(
              title: Text("SUKHOI SU-34"),
              value: "2",
              groupValue: respostaTelaUm,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaUm = value;
                    }),
                  },
            ),

            //ALTERNATIVA 04
            RadioListTile<String>(
              title: Text("EUROFIGHTER TYPHOON"),
              value: "3",
              groupValue: respostaTelaUm,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaUm = value;
                    }),
                  },
            ),

            //ALTERNATIVA 05
            RadioListTile(
              title: Text("DASSAULT RAFALE"),
              value: "4",
              groupValue: respostaTelaUm,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaUm = value;
                    }),
                  },
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaDois(respostaTelaUm: respostaTelaUm)
                    ),
                );
              },
              child: Text("2° QUESTÃO"),
            ),
          ],
        ),
      ),
    );
  }
}
