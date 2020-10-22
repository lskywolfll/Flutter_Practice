import 'package:flutter/material.dart';
import 'package:platzi_flutter/components/trips/floating_action_button_profile.dart';
import 'package:platzi_flutter/components/trips/header_appbar_profile.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(),
        HeaderAppBarProfile(),
        FloatingActionButtonProfile()
      ],
    );
  }
}