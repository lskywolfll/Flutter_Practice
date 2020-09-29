import 'package:flutter/material.dart';

class FloatinActionButtonGreen extends StatefulWidget {
  @override
  _FloatinActionButtonGreenState createState() =>
      _FloatinActionButtonGreenState();
}

class _FloatinActionButtonGreenState extends State<FloatinActionButtonGreen> {
  bool estadoMeGusta = false;
  Icon iconoFavorite = Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: actionButton,
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Me Gusta!",
      child: iconoFavorite,
    );
  }

  void actionButton() {

    setState(() {
      estadoMeGusta == true ? estadoMeGusta = false : estadoMeGusta = true;

      if (estadoMeGusta == true) {
        iconoFavorite = Icon(Icons.favorite);
        mensajeAction("Agregaste a tus Favoritos!", Colors.green);
      } else {
        iconoFavorite = Icon(Icons.favorite_border);
        mensajeAction("Lo sacaste de tus Favoritos!", Colors.red);
      }
    });
  }

  void mensajeAction(String texto,Color color){
    Scaffold.of(context).showSnackBar(
      SnackBar(content: Text(texto), backgroundColor: color,)
    );
  }
}
