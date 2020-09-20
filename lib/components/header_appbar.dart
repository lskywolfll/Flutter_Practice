import 'package:flutter/material.dart';
import 'package:platzi_flutter/components/card_image_list.dart';
import 'package:platzi_flutter/pages/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack("Bienvenido"), CardImageList()],
    );
  }
}
