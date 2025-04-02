import 'package:flutter/material.dart';
import 'buscaApi.dart';

class Atividade2 extends StatelessWidget {
  const Atividade2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Atividade 2",
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
  final TextEditingController _controller = TextEditingController();
  BuscaApi? usuario;
  bool usuarioNaoEncontrado = false;

  void buscarUsuario() async {
    int id = int.tryParse(_controller.text) ?? 0;
    if (id > 0) {
      var resultado = await BuscaApi.buscaUsuario(id);
      setState(() {
        usuario = resultado;
        usuarioNaoEncontrado = resultado == null;
      });
    } else {
      setState(() {
        usuario = null;
        usuarioNaoEncontrado = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(28, 15, 46, 1),
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        title: Text("Buscar ID"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(18, 24, 78, 1),
              Color.fromRGBO(30, 0, 87, 1),
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
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                decoration: InputDecoration(
                  labelText: "Digite um ID",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: buscarUsuario,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromRGBO(255, 255, 255, 1),
                  backgroundColor: Color.fromRGBO(62, 15, 122, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text("Buscar"),
              ),
              SizedBox(height: 20),
              if (usuarioNaoEncontrado)
                Text(
                  "Usuário não encontrado",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              AnimatedOpacity(
                duration: Duration(microseconds: 500),
                opacity: usuario != null ? 1.0 : 0.0,
                child: usuario != null
                    ? Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(57, 5, 105, 1),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 77, 0, 112).withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              usuario!.avatar,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "${usuario!.first_name} ${usuario!.last_name}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              usuario!.email,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                          ),
                          ),
                        ],
                      ),
                    )
                    : SizedBox(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
