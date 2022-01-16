import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  //Cor de fundo
  final Color _corFundo = const Color.fromRGBO(108, 192, 218, 1.0);
  const ScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        _pagina1(),
        _pagina2(),
      ],
    ));
  }

  Widget _pagina1() {
    //Colocar um widget emcima do outro
    //A ordem importa
    return Stack(
      children: [
        _colorFundo(),
        _imagemFundo(),
        _texto(),
      ],
    );
  }

  _pagina2() {
    return Container(
      child: _colorFundo(),
    );
  }

  Widget _colorFundo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: _corFundo,
    );
  }

  Widget _imagemFundo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: const Image(
        image: AssetImage('assets/scroll.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _texto() {
    const estiloTexto = TextStyle(color: Colors.white, fontSize: 56);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text('11º', style: estiloTexto),
          Text('Segunda-Feira', style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white),
        ],
      ),
    );
  }
}
