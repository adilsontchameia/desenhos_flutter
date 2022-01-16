import 'dart:math';

import 'package:flutter/material.dart';

class BotoesPage extends StatelessWidget {
  const BotoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fundoApp(),
        ],
      ),
    );
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
}
