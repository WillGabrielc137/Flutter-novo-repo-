import 'package:flutter/material.dart';
import 'package:prova_patrick/telaUm.dart';

class telaConfirmacao extends StatefulWidget {
  const telaConfirmacao({super.key, required this.nome, required this.idade});

  final String nome;
  final String idade;

  @override
  State<telaConfirmacao> createState() => _telaConfirmacaoState();
}

class _telaConfirmacaoState extends State<telaConfirmacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 129, 198, 255),
        title: Text(
          "Confirmação",
          style: TextStyle(
            color: const Color.fromRGBO(0, 0, 0, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromRGBO(187, 222, 251, 1),
              const Color.fromRGBO(100, 181, 246, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nome: ${widget.nome}\n\nIdade: ${widget.idade}",
                style: TextStyle(
                  fontSize: 24,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              telaUm(nome: widget.nome, idade: widget.idade),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(25, 118, 210, 1),
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
                child: Text("Editar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
