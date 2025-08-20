import 'package:class_20/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:class_20/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage())
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/second': (context) => SecondScreen(),
      },

      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (_) =>
            Scaffold(body: Center(child: Text("404-Page not found"))),
      ),
    );
  }
}
