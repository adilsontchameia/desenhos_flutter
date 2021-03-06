import 'package:desenhos_flutter/src/pages/basico_page.dart';
import 'package:desenhos_flutter/src/pages/botoes_page.dart';
import 'package:desenhos_flutter/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Estilo do status bar
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desenhos',
      //Rotas - Paginas
      initialRoute: 'botoes',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botoes': (BuildContext context) => BotoesPage(),
      },
    );
  }
}
