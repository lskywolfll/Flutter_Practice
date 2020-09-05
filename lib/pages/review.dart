import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage =
      "https://images.unsplash.com/photo-1599302761127-e3ed900207fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80";

  Review(this.pathImage);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [_foto()],
    );
  }

  Widget _foto() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        backgroundImage: NetworkImage(pathImage),
      ),
    );
  }
}
