import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  final String buttonText;

  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      child: buttonNavigateInk(context),
    );
  }

  void actionButton(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Navegando")));
  }

  InkWell buttonNavigateInk(BuildContext context) {
    return InkWell(
      onTap: () => actionButton(context),
      child: Container(
        height: 50.0,
        width: 180.0,
        decoration: buttonDecorate(),
        child: Center(
          child: buttonName(),
        ),
      ),
    );
  }

  Text buttonName() {
    return Text(
      buttonText,
      style: buttonStyleName(),
    );
  }

  TextStyle buttonStyleName() {
    return TextStyle(fontSize: 18.0, fontFamily: "Lato", color: Colors.white);
  }

  BoxDecoration buttonDecorate() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(30.0), gradient: buttonGradient());
  }

  LinearGradient buttonGradient() {
    return LinearGradient(
        colors: <Color>[
          Color(0xFF4268D3),
          Color(0xFF584CD1),
        ],
        begin: FractionalOffset(0.2, 0.0),
        end: FractionalOffset(1.0, 0.6),
        stops: [0.0, 0.6],
        tileMode: TileMode.clamp);
  }
}
