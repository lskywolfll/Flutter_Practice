import 'package:flutter/material.dart';
import 'package:platzi_flutter/pages/description_place.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _texto =
      'Lorem ipsum dolor sit amet, consectetuer adipicing elit. Aenan commodo ligula edget dolor.Aenan massa. Cum soccis natoque penatibus e tmagnins dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultrcies nec, pelientesque eu.\n\nPretium quis sem nulia consequat massa quis enim donec pede justo, frigilla vel, aliquect nec, vulputate edget, arculin enim justo, thoncus t, imperdiet a.';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Page0'),
            ),
            body: SingleChildScrollView(
              child: DescriptionPlace('Bahamas', 4.6, _texto),
            )));
  }
}
