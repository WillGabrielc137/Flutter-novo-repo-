import 'package:flutter/material.dart';
import 'package:atividade2/tela_um.dart';

void main() {
  runApp(const TesteCacas());
}

class TesteCacas extends StatelessWidget {
  const TesteCacas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CONHECIMENTO GERAL DE CAÇAS",
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("TESTE DE CONHECIMENTO BÁSICO DE CAÇAS"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  'Teste de conhecimento básico de caças de diversas nações',
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaUm()),
                  );
                },
                child: Text("INICIAR TESTE"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
