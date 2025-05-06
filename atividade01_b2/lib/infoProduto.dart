import 'package:flutter/material.dart';
import 'package:atividade01_b2/produto.dart';

ShowBottomSheet(BuildContext context, Produto produto) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Color.fromRGBO(53, 53, 53, 1),
    builder:
        (_) => SizedBox(
          width: 420,
          height: 800,

          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 290,
                      width: 290,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          produto.imagemUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                    Text(
                      produto.nome,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (20),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),

                    SizedBox(height: 10),
                    Text(
                      produto.preco,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (20),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),

                    SizedBox(height: 10),
                    Text(
                      produto.descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (15),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    SizedBox(height: 25),

                    ElevatedButton(
                      onPressed: () => {Navigator.pop(context)},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(167, 0, 0, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Fechar",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: (20),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
  );
}
