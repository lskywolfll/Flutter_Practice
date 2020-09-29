import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_flutter/pages/home.dart';
import 'package:platzi_flutter/pages/profile_trips.dart';
import 'package:platzi_flutter/pages/search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  const PlatziTripsCupertino({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: cupertinoTabBar(),
    );
  }

  Widget cupertinoTabBar(){
    return CupertinoTabScaffold(
      tabBar: tabBar(),
      tabBuilder: tabBuilder,
    );
  }

  // ignore: missing_return
  Widget tabBuilder(BuildContext context, int index){
    switch (index) {
      case 0:
        return CupertinoTabView(
          builder: (context) => HomeTrips(),
        );
        case 1:
        return CupertinoTabView(
          builder: (context) => SearchTrips(),
        );
        case 2:
        return CupertinoTabView(
          builder: (context) => ProfileTrips(),
        );
        break;
    }
  }

  CupertinoTabBar tabBar(){
    return CupertinoTabBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.indigo),
          title: Text("")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.indigo),
          title: Text("")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.indigo),
          title: Text("")
        )
      ],
    );
  }
}