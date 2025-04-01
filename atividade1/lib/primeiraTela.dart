import 'package:flutter/material.dart';
import 'dart:math';

class PrimeiraTela extends StatelessWidget {
  PrimeiraTela({super.key});

  final List<String> opcoes = [
    'assets/pedra.png',
    'assets/papel.png',
    'assets/tesoura.png',
  ];

  void _jogar(BuildContext context, String escolhaJogador) {
    final random = Random();
    String escolhaApp = opcoes[random.nextInt(3)];

    String resultado;
    String mensagem;

    if (escolhaApp == escolhaJogador) {
      resultado = 'assets/empate.png';
      mensagem = 'Deu Empate';
    } else if ((escolhaJogador == 'assets/pedra.png' &&
            escolhaApp == 'assets/tesoura.png') ||
        (escolhaJogador == 'assets/papel.png' &&
            escolhaApp == 'assets/pedra.png') ||
        (escolhaJogador == 'assets/tesoura.png' &&
            escolhaApp == 'assets/papel.png')) {
      resultado = 'assets/vitoria.png';
      mensagem = 'Você Venceu';
    } else {
      resultado = 'assets/derrota.png';
      mensagem = 'Você Perdeu';
    }

    Navigator.pushNamed(
      context,
      '/resultado',
      arguments: {
        'jogador': escolhaJogador,
        'app': escolhaApp,
        'resultado': resultado,
        'mensagem': mensagem,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                height: 65,
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Pedra, Papel, Tesoura',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Image.asset('assets/padrao.png', width: 120, height: 120),
              const SizedBox(height: 15),
              const Text(
                'Escolha do APP (Aleatório)',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              Wrap(
                spacing: 15,
                children: opcoes.map((opcao) {
                  return GestureDetector(
                    onTap: () => _jogar(context, opcao),
                    child: Image.asset(opcao, width: 100, height: 100),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Escolha do Usuário',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
