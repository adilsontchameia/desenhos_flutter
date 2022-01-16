import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo =
      const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = const TextStyle(fontSize: 18.0, color: Colors.grey);
  final String urlImagem =
      'https://petapixel.com/assets/uploads/2021/06/Social-Medias-Impact-on-Landscape-and-Nature-Photography.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
          image: NetworkImage(urlImagem),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            children: [
              //Expanded - Vai tomar todo espaco disponivel sem roubar
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
      ],
    ));
  }
}
