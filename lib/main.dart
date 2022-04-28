import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _fraseAleatoria = [
    'As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.',
    'Faça mesmo sem vontade, o que vem depois disso é satisfatório de mais',
    'Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação.',
    'A motivação está dentro de si',
  ];

  var fraseGerada = 'Clique abaixo para gerar uma frase';

  void _gerarFrase() {
    var _numeroSorteado = new Random().nextInt(_fraseAleatoria.length);
    setState(() {
      fraseGerada = _fraseAleatoria[_numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Frases do dia',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber),
        ),
        child: Column(
          children: [
            Image.asset('imagens/logo.png'),
            SizedBox(height: 20),
            Text(
              fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              child: Text(
                'Nova Frase',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.amber,
              onPressed: _gerarFrase,
            ),
          ],
        ),
      ),
    );
  }
}
