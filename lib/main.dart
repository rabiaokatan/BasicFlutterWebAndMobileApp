import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/LandingPage/landingPage.dart';
import 'package:flutter_web_mobile/Navbar/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flower Studio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(170, 20, 20, 1.0),
              Color.fromRGBO(100, 11, 54, 1.0)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:20, horizontal: 40),
                child: LandingPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
