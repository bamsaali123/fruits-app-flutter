import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/delivery.dart';
import 'package:flutter_application_2/screens/home.dart';
import 'package:flutter_application_2/screens/search.dart';
import 'package:flutter_application_2/screens/yourinformation.dart';
import 'screens/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:SplashScreen());
  }
}
