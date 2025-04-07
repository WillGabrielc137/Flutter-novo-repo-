import 'package:flutter/material.dart';
import 'package:lista_to_do/telaUm.dart';

void main(){
  runApp(const ListaToDoApp());
}

class ListaToDoApp extends StatelessWidget{
  const ListaToDoApp({super.key});
  
@override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ListaToDO",
      home: const telaUm(),
    );
  }
}