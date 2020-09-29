import 'package:flutter/material.dart';

import 'floatin_action_button.dart';

class CardImage extends StatelessWidget {
  final String pathImage;

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        createCard(pathImage),
        FloatinActionButtonGreen()
      ],
    );
  }

  Widget createCard(image) {
    return Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80, left: 20.0),
      decoration: cardDecoration(image),
    );
  }

  BoxDecoration cardDecoration(image) {
    return BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38, blurRadius: 15.0, offset: Offset(0.0, 7.0))
        ]);
  }
}
