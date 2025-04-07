import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _campoLogin = new TextEditingController();
  TextEditingController _campoPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    controller: _campoLogin,
                    decoration: InputDecoration(
                      labelText: "Login",
                      fillColor: Colors.red,
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    controller: _campoPassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      fillColor: Colors.red,
                    ),
                  ),

                  ElevatedButton(
                    onPressed:
                        () => {
                          print({
                            " Login ": _campoLogin.text,
                            " Senha ": _campoPassword.text,
                          }),
                        },
                    child: Text("Printar nome"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
