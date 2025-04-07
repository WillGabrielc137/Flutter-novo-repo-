import 'package:flutter/material.dart';
import 'main.dart';

class telaUm extends StatefulWidget {
  const telaUm({super.key});

  @override
  State<telaUm> createState() => _TelaUmState();
}

class _TelaUmState extends State<telaUm> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      _contador--;
    });
  }

  void _resetar() {
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Valor Atual: ",
              style: TextStyle(fontSize: 24),
              ),
              Text(
                "$_contador",
                style: const TextStyle(
                  fontSize: 48, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    iconSize: 40,
                    onPressed: _decrementar,
                  ),
                  const SizedBox(width: 50),
                  IconButton(
                    icon: Icon(Icons.refresh),
                    iconSize: 40,
                    onPressed: _resetar,
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    iconSize: 40,
                    onPressed: _incrementar,
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
