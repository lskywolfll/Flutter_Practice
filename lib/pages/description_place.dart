import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final double stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

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
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: 'Lato'),
            textAlign: TextAlign.left,
          ),
        ),
        _drawStars(stars),
      ],
    );

    return Column(
      children: [titleStars, description],
    );
  }

  Widget _drawStars(double numberStars) {
    List<Widget> rowStars = [];

    for (var i = 0; i < 5; i++) {
      rowStars.add(starWidget(numberStars));
      numberStars--;
    }

    return Row(
      children: rowStars,
    );
  }

  Widget starWidget(double valueStar) {
    return Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: validateStarIconWidget(valueStar),
    );
  }

  Widget validateStarIconWidget(double pointStar) {
    if (pointStar >= 1.0) {
      return fullStarIconWidget();
    }

    if (pointStar >= 0.5) {
      print(pointStar);
      return halfStarIconWidget();
    }

    return emptyStarIconWidget();
  }

  Widget fullStarIconWidget() {
    return new Icon(
      Icons.star,
      color: Color(0XFFF2C611),
    );
  }

  Widget halfStarIconWidget() {
    return new Icon(
      Icons.star_half,
      color: Color(0XFFF2C611),
    );
  }

  Widget emptyStarIconWidget() {
    return new Icon(
      Icons.star_border,
      color: Color(0XFFF2C611),
    );
  }
}
