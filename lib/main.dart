import 'package:flutter/material.dart';
import 'package:flutter_practice_project/screens/carousel_slider/slider1.dart';
import 'package:flutter_practice_project/screens/carousel_slider/slider2.dart';
import 'package:flutter_practice_project/screens/search/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SearchScreen(),
    );
  }
}

