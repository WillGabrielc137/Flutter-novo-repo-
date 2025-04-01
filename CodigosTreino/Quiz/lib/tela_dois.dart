import 'package:flutter/material.dart';
import 'package:atividade2/tela_tres.dart';

class TelaDois extends StatefulWidget {
  final String? respostaTelaUm;

  const TelaDois({super.key,
  required this.respostaTelaUm});

  @override
  State<TelaDois> createState() => TelaDoisState();
}

class TelaDoisState extends State<TelaDois> {
  String? respostaTelaDois;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("2° QUESTÃO"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "Su-34.jpg"
                ),
            ),
            Text("QUAL A VELOCIDADE MAXIMA DO SU-34 ?"),

            //ALTERNATIVA 01
            RadioListTile(
              title: Text("3.050 KM/H (MACH 2.47)"),
              value: "0",
              groupValue: respostaTelaDois,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaDois = value;
                    }),
                  },
            ),

            //ALTERNATIVA 02
            RadioListTile(
              title: Text("1.275 KM/H (MACH 1.03)"),
              value: "2",
              groupValue: respostaTelaDois,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaDois = value;
                    }),
                  },
            ),

            //ALTERNATIVA 03
            RadioListTile(
              title: Text("2.000 KM/H (MACH 1.61)"),
              value: "1",
              groupValue: respostaTelaDois,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaDois = value;
                    }),
                  },
            ),

            //ALTERNATIVA 04
            RadioListTile(
              title: Text("3.000 KM/H (MACH 2.42)"),
              value: "3",
              groupValue: respostaTelaDois,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaDois = value;
                    }),
                  },
            ),

            //ALTERNATIVA 05
            RadioListTile(
              title: Text("1.890 KM/H (MACH 1.53)"),
              value: "4",
              groupValue: respostaTelaDois,
              onChanged:
                  (value) => {
                    setState(() {
                      respostaTelaDois = value;
                    }),
                  },
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaTres(
                      respostaTelaUm: widget.respostaTelaUm,
                      respostaTelaDois: respostaTelaDois)
                    ),
                );
              },
              child: Text("3° QUESTÃO"),
            ),
          ],
        ),
      ),
    );
  }
}
