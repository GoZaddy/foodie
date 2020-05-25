import 'package:flutter/material.dart';
import 'UI/pages/logo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xff15172B),
        accentColor: Color(0xff45E9BD),
        fontFamily: "Open Sans",
        primaryTextTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 18
          )
        ),
        accentTextTheme: TextTheme(
          headline1: TextStyle(
            color: Color(0xff15172B),
            fontSize: 28,
            fontWeight: FontWeight.bold
          )
        )
      ),
      home: LogoScreen(),
    );
  }
}



