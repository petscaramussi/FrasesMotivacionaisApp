import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  var _frases = [
    "O sucesso nasce do querer, da determinação e persistência em se chegar a um objetivo. Mesmo não atingindo o alvo, quem busca e vence obstáculos, no mínimo fará coisas admiráveis",
    "Se você quer ser bem-sucedido precisa de dedicação total, buscar seu último limite e dar o melhor de si mesmo",
    "Não crie limites para si mesmo. Você deve ir tão longe quanto sua mente permitir. O que você mais quer pode ser conquistado",
    "Dificuldades preparam pessoas comuns para destinos extraordinários"
    ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    //gerar numero randomico
    var numeroSortiado = Random().nextInt(_frases.length);
    setState(() {
          _fraseGerada = _frases[ numeroSortiado ];
        });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                RaisedButton(
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.green,
                  onPressed: _gerarFrase,
                )
              ]),
        ),
      ),
    );
  }
}
