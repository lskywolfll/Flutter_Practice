import 'package:flutter/material.dart';
import 'package:platzi_flutter/pages/gradient_back.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key key}) : super(key: key);

  final String urlTestImage =
      "https://images.unsplash.com/photo-1569913486515-b74bf7751574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=80";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Profile"),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 110.0, left: 20.0, right: 23.0),
                width: 70.0,
                height: 70.0,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(urlTestImage),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
              Container(
                margin: EdgeInsets.only(
                  top: 120.0,
                ),
                width: 140.0,
                height: 25.0,
                child: Text("Abigail Salgado",
                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
              ),
              Text("team@platzi.com",
                    style: TextStyle(color: Colors.grey, fontSize: 20.0))
            ])
          ],
        )
      ],
    );
  }
}
