import "package:atividade01_b2/telaUm.dart";
import "package:flutter/material.dart";

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Atividade 01 - B2",
    home: telaUm(),
   );
  }
}