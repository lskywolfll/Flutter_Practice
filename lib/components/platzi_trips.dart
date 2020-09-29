import 'package:flutter/material.dart';
import 'package:platzi_flutter/pages/home.dart';

class PlatziTrips extends StatefulWidget {
  PlatziTrips({Key key}) : super(key: key);

  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Page0'),
      // ),
      body: HomeTrips(),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: navigationBar(),
      ),
    );
  }

  Widget navigationBar() {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
      BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("")),
    ]);
  }
}
