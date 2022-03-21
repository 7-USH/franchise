import 'package:flutter/material.dart';
import 'package:franchise/screens/add_lead.dart';
import 'package:franchise/screens/home.dart';
import 'package:franchise/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Franchise',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}