import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("@jonatas.dev"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'TextFormField',
              ),
              Container(
                margin: const EdgeInsets.all(30),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Digite seu e-mail',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(30),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: 'Digite sua senha',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
