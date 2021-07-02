import 'package:covid_app/pages/detail_page.dart';
import 'package:covid_app/pages/home_page.dart';
import 'package:covid_app/themes/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid App',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        fontFamily: 'lato',
      ),
      home: HomePage(),
    );
  }
}
