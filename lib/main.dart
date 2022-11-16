import 'package:flutter/material.dart';
import 'package:news/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      routes: {HomeScreen.nameKay : (_)=> HomeScreen()} ,
      initialRoute: HomeScreen.nameKay ,
      debugShowCheckedModeBanner: false,
    );
  }
}

