import 'package:flutter/material.dart';
import 'package:news/base/myTheme.dart';
import 'package:news/ui/home/homeScreen.dart';
import 'package:news/ui/home/news/news_fragment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      theme: MyTheme.lightTheme,
      routes: {HomeScreeen.nameKay : (_)=> HomeScreeen()} ,
      initialRoute: HomeScreeen.nameKay ,
      debugShowCheckedModeBanner: false,
    );
  }
}

