import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';


void main() {
  runApp(MaterialApp(
    home:HomePage(),
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({Key, key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      home:HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}