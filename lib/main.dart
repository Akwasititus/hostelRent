import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:titus/screens/nav_home/button_nav/navigation_home.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // To set orientation always portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        title: 'My Hostel',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  const NavigationHome()
      );

  }
}



