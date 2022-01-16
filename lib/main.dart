import 'package:desenhos_flutter/src/pages/basico_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desenhos',
      //Rotas - Paginas
      initialRoute: 'basico',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
      },
    );
  }
}
