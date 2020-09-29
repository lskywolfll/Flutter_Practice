import 'package:flutter/material.dart';
import 'package:platzi_flutter/components/header_appbar.dart';

import 'description_place.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({Key key}) : super(key: key);

  final String _texto =
      'Lorem ipsum dolor sit amet, consectetuer adipicing elit. Aenan commodo ligula edget dolor.Aenan massa. Cum soccis natoque penatibus e tmagnins dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultrcies nec, pelientesque eu.\n\nPretium quis sem nulia consequat massa quis enim donec pede justo, frigilla vel, aliquect nec, vulputate edget, arculin enim justo, thoncus t, imperdiet a.';

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("fuidsajfuisad", 5, _texto),
              ],
            ),
            HeaderAppBar()
          ],
        );
  }
}