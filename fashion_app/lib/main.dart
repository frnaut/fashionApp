import 'package:fashion_app/pages/details_page.dart';
import 'package:fashion_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "home",
      routes: {
        "home": (BuildContext context) => HomePage(),
        "details": (BuildContext context) => DetailsPage()
      },
    );
  }
}
