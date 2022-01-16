import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasicoPage extends StatelessWidget {
  //Propriedades
  final estiloTitulo =
      const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = const TextStyle(fontSize: 18.0, color: Colors.grey);
  final String urlImagem =
      'https://petapixel.com/assets/uploads/2021/06/Social-Medias-Impact-on-Landscape-and-Nature-Photography.jpg';
  //Fim de Propriedades
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        _criarImagem(),
        _criarTitulo(),
        _criarAcoes(),
        _criarTexto(),
        _criarTexto(),
        _criarTexto(),
      ],
    )));
  }

  Widget _criarImagem() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(urlImagem),
        height: 280.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _criarTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            //Expanded - Vai tomar todo espaco disponivel sem roubar as dimensoes
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lago Exemplar',
                    style: estiloTitulo,
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Este lado e uma foto da internet',
                    style: estiloSubtitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _criarAcoes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _acoes(Icons.call, 'CALL'),
        _acoes(Icons.near_me, 'ROUTE'),
        _acoes(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _acoes(IconData icon, String texto) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _criarTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
        child: Text(
          'ExemploExemploExemploExemploExemploExemploExemploExemploExemploExemploExemplo ExemploExemploExemploExemploExemploExemploExemploExemploExemploExemploExemploExemploExemploExemplo ExemploExemploExemploExemploExemploExemploExemploExemploExemploExemploExemploExemploExemploExemplo ExemploExemploExemploExemploExemploExemploExemploExemploExemploExemplo',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
