import 'package:flutter/material.dart';
import 'package:platzi_flutter/pages/review_list.dart';
import '../controllers/stars.dart';
import 'package:platzi_flutter/pages/review.dart';

import '../controllers/stars.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final double pointStars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.pointStars, this.descriptionPlace);

  String texto =
      "https://images.unsplash.com/photo-1599302761127-e3ed900207fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80";
  String userName = 'Varuna Yasas';
  String comment = "There is an amazin place in Sri Lanka";

  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a),
            fontFamily: 'Lato'),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 3.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: 'Lato'),
            textAlign: TextAlign.left,
          ),
        ),
        stars.drawStars(pointStars, 323.0, 3.0)
      ],
    );

    return Column(
      children: [titleStars, description, ReviewList()],
    );
  }
}
