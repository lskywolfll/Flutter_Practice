import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String pathImage = "assets/img/beach.jpeg";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: createCard(pathImage),
    );
  }

  Widget createCard(image) {
    return Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80, left: 20.0),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );
  }
}
