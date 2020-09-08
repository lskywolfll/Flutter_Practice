import 'package:flutter/material.dart';
import 'package:platzi_flutter/pages/review.dart';

class ReviewList extends StatelessWidget {
  final url =
      "https://images.unsplash.com/photo-1599302761127-e3ed900207fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: listReview(),
    );
  }

  List<Widget> listReview() {
    List<Widget> contenedor = [];

    for (var i = 0; i < 5; i++) {
      contenedor.add(Review(
        url,
        "Varuna Yasas",
        "There is a amazing place in Sri Lanka",
        5.0,
      ));
    }

    return contenedor;
  }
}
