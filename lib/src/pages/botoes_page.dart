import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BotoesPage extends StatelessWidget {
  const BotoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            _fundoApp(),
            SingleChildScrollView(
              child: Column(
                children: [
                  _titulos(),
                  _botoesRedondos(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _fundoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ],
        ),
      ),
    );

    final caixaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 340.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ])),
      ),
    );

    return Stack(
      children: [
        gradiente,
        //Colocar elementos com coordenadas especificas
        Positioned(
          top: -100.0,
          child: caixaRosa,
        ),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this transaction into particulary category.',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                  caption: TextStyle(
                    color: Color.fromRGBO(116, 117, 152, 1.0),
                  ),
                )),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today, size: 25.0),
                title: Container()),
            BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart, size: 25.0),
              title: Container(),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add_alt_1_outlined, size: 25.0),
                title: Container()),
          ],
        ));
  }

  Widget _botoesRedondos() {
    return Table(
      children: [
        TableRow(
          children: [
            _criarBotaoRendondo(Colors.blue, Icons.border_all, 'General'),
            _criarBotaoRendondo(Colors.purple, Icons.directions, 'Direction'),
          ],
        ),
        TableRow(
          children: [
            _criarBotaoRendondo(Colors.orange, Icons.shop, 'Buy'),
            _criarBotaoRendondo(Colors.pinkAccent, Icons.file_copy, 'Drive'),
          ],
        ),
        TableRow(
          children: [
            _criarBotaoRendondo(Colors.blueAccent, Icons.movie, 'Movie'),
            _criarBotaoRendondo(Colors.green, Icons.party_mode, 'Party'),
          ],
        ),
        TableRow(
          children: [
            _criarBotaoRendondo(Colors.red, Icons.photo, 'Photos'),
            _criarBotaoRendondo(Colors.teal, Icons.help, 'Help'),
          ],
        ),
      ],
    );
  }

  Widget _criarBotaoRendondo(Color color, IconData icone, String texto) {
    return BackdropFilter(
      //sigmaX: 1.0, sigmaY: 1.0
      filter: ImageFilter.blur(),
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 5.0),
            CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 35.0,
                child: Icon(icone, color: Colors.white, size: 30.0)),
            Text(
              texto,
              style: TextStyle(color: color),
            ),
            SizedBox(height: 5.0)
          ],
        ),
      ),
    );
  }
}
