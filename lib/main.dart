import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do Dia",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Enfrente os problemas e leve a melhor!",
    "Dê mais atenção ao que você tem de bom na sua vida",
    "Para chegar ao topo, o que importa é começar!",
    "De nada adianta ter sonhos, se você não se empenhar em correr atrás",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      this._fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              Text(_fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      color: Colors.black)),
              ElevatedButton(
                onPressed: _gerarFrase,
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }
}
