import 'package:flutter/material.dart';
import 'primeiraTela.dart';
import 'segundaTela.dart';

void main() {
  runApp(const PedraPapelTesouraAPP());
}

class PedraPapelTesouraAPP extends StatelessWidget {
  const PedraPapelTesouraAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pedra, Papel, Tesoura',
      initialRoute: '/',
      routes: {
        '/': (context) => PrimeiraTela(),
        '/resultado': (context) => const SegundaTela(),
      },
    );
  }
}
