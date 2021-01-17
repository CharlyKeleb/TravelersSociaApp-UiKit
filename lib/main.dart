import 'package:flutter/material.dart';
import 'package:travel_social_app/screens/mainscreen.dart';
import 'package:travel_social_app/utils/constants.dart';

void main()=> runApp((MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Constants.darkTheme,
      home: MainScreen(),
    );
  }
}

