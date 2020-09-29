import 'package:flutter/material.dart';
import 'package:platzi_flutter/pages/home.dart';
import 'package:platzi_flutter/pages/profile_trips.dart';
import 'package:platzi_flutter/pages/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  PlatziTrips({Key key}) : super(key: key);

  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  int indexTap = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Page0'),
      // ),
      body: widgetsChildrens[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: navigationBar(),
      ),
    );
  }

  final List<Widget> widgetsChildrens = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapeed(int index) {
    setState(() {
      indexTap = index;
    });
  }

  Widget navigationBar() {
    return BottomNavigationBar(
        onTap: onTapTapeed,
        currentIndex: indexTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("")),
        ]);
  }
}
