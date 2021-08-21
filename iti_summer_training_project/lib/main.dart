import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iti_summer_training_project/screens/details/chairs_screen.dart';
import 'package:iti_summer_training_project/screens/details/desks_screen.dart';
import 'package:iti_summer_training_project/screens/details/nightstands_screen.dart';
import 'package:iti_summer_training_project/screens/details/sofas_screen.dart';
import 'package:iti_summer_training_project/screens/home/home_screen.dart';
import 'package:iti_summer_training_project/screens/login/login_screen.dart';
import 'package:iti_summer_training_project/screens/welcome/welcome_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle( statusBarColor: Colors.transparent,
     statusBarBrightness: Brightness.dark,
    )
  );

  runApp(getMyAppRootWidget());
}

Widget getMyAppRootWidget() {
  Widget materialAppWidget = new MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Metropolis",
    ),
    //home: WelcomeScreen(),
    routes: {
      '/' : (context) => WelcomeScreen(),
      '/login': (context) => LoginScreen(),
      '/home': (context) => HomeScreen(),
      '/chairsDetails': (context) => ChairsDetailsScreen(),
      '/sofasDetails': (context) => SofasDetailsScreen(),
      '/nightDetails': (context) => NightDetailsScreen(),
      '/desksDetails': (context) => DesksDetailsScreen(), 
    },
    debugShowCheckedModeBanner: false,
  );
  return materialAppWidget;
}