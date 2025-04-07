import 'package:flutter/material.dart';

class telaUm extends StatefulWidget {
  const telaUm({super.key});

  @override
  State<telaUm> createState() => _telaUmState();
}

class _telaUmState extends State<telaUm> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _tarefas = [];

  void _adicionarTarefa() {
    final texto = _controller.text.trim();

    if (texto.isNotEmpty) {
      setState(() {
        _tarefas.add(texto);
        _controller.clear();
      });
    }
  }

  void _removerTarefa(int index) {
    setState(() {
      _tarefas.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 1, 54, 1),
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        title: Text("Lista de Tarefas"),
        centerTitle: true,
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(19, 0, 129, 1),
              Color.fromRGBO(36, 0, 121, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                decoration: const InputDecoration(
                  labelText: "Informe a nova tarefa",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: _adicionarTarefa,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromRGBO(255, 255, 255, 1),
                  backgroundColor: Color.fromRGBO(68, 0, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                ),
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  itemCount: _tarefas.length,
                  itemBuilder: (context, index) {
                    final tarefa = _tarefas[index];

                    return Dismissible(
                      key: UniqueKey(),
                      direction: DismissDirection.startToEnd,
                      onDismissed: (_) {
                        final tarefaRemovida = _tarefas[index];

                        Future.delayed(Duration(milliseconds: 300), () {
                          setState(() {
                            _tarefas.remove(tarefaRemovida);
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              content: Text("Tarefa removida"),
                              duration: Duration(milliseconds: 800),
                            ),
                          );
                        });
                      },
                      background: Container(
                        color: Color.fromRGBO(133, 0, 0, 1),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Icon(
                          Icons.delete,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),

                      child: Card(
                        color: Color.fromRGBO(71, 0, 112, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),

                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          title: Text(
                            tarefa,
                            style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: const Icon(
                            Icons.task_alt,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
