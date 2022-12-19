import 'package:flutter/material.dart';
import 'screens/home.dart';

// Make an instance of an brain class

// Entery point of our program
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        iconTheme: const IconThemeData(color: Colors.black),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF453C67),
        ),
        scaffoldBackgroundColor: Color(0xFF453C67),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text('BMI Calculator'),
        ),
        body: const Home(),
      ),
    );
  }
}
