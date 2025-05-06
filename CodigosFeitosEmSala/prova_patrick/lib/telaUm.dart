import 'package:flutter/material.dart';
import 'package:prova_patrick/telaConfirmacao.dart';

class telaUm extends StatefulWidget {
  const telaUm({super.key, required this.nome, required this.idade});

  final String nome;
  final String idade;

  @override
  State<telaUm> createState() => _telaUmState();
}

class _telaUmState extends State<telaUm> {
  late TextEditingController _campoNome;
  late TextEditingController _campoIdade;

  @override
  void initState() {
    super.initState();
    _campoNome = TextEditingController(text: widget.nome);
    _campoIdade = TextEditingController(text: widget.idade);
  }

  @override
  void dispose() {
    _campoNome.dispose();
    _campoIdade.dispose();
    super.dispose();
  }

  void _mostrarErro(String mensagem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("ERRO"),
          content: Text(mensagem),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  void _validarCampos() {
    final nome = _campoNome.text.trim();
    final idadeText = _campoIdade.text.trim();
    final idade = int.tryParse(idadeText);

    if (nome.isEmpty) {
      _mostrarErro("O campo nome está vazio");
      return;
    }

    if (idade == null) {
      _mostrarErro("O campo idade está vazio");
      return;
    }

    if (idade < 18) {
      _mostrarErro("A idade deve ser 18 anos ou mais");
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => telaConfirmacao(nome: nome, idade: idadeText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 129, 198, 255),
        title: Text(
          "Cadastro de Usuário",
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
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
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Preencha os campos abaixo",
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              TextField(
                controller: _campoNome,
                keyboardType: TextInputType.text,
                style: TextStyle(color: const Color.fromRGBO(0, 0, 0, 1)),
                decoration: InputDecoration(
                  labelText: "Nome:",
                  labelStyle: TextStyle(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(133, 200, 255, 1),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: const Color.fromRGBO(0, 47, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              TextField(
                controller: _campoIdade,
                keyboardType: TextInputType.text,
                style: TextStyle(color: const Color.fromRGBO(0, 0, 0, 1)),
                decoration: InputDecoration(
                  labelText: "Idade:",
                  labelStyle: TextStyle(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(133, 200, 255, 1),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: const Color.fromRGBO(0, 47, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: _validarCampos,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(25, 118, 210, 1),
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
                child: Text("Cadastrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
