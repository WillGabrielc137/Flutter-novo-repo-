import 'package:flutter/material.dart';
import 'listaProduto.dart';
import 'infoProduto.dart';

class telaUm extends StatefulWidget {
  const telaUm({super.key});

  @override
  State<telaUm> createState() => _telaUmState();
}

class _telaUmState extends State<telaUm> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(12, 12, 12, 1),
        title: Text(
          "Lista de Produtos",
          style: TextStyle(
            color: const Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      backgroundColor: Color.fromRGBO(20, 20, 20, 1),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (context, index) {
            final produto = produtos[index];
            return Center(
              child: SizedBox(
                height: 260,
                width: 250,
                child: Card(
                  color: Color.fromRGBO(53, 53, 53, 1),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(produto.imagemUrl),
                        ),
                        SizedBox(height: 20),

                        Text(
                          produto.nome,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),

                        SizedBox(height: 10),
                        Text(
                          produto.preco,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        SizedBox(height: 10),

                        ElevatedButton(
                          onPressed: () => ShowBottomSheet(context, produto),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(83, 83, 83, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Mais informações",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
