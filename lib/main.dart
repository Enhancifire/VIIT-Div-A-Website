import 'package:flutter/material.dart';

import 'package:div_a_site/constants.dart';
import 'screens/home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VIIT AI Div A 2020-24',
      theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          fontFamily: 'FiraSans',
          textTheme: ThemeData.dark()
              .textTheme
              .apply(bodyColor: Colors.white)
              .copyWith()),
      home: HomePage(),
    );
  }
}
