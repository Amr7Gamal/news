import 'package:flutter/material.dart';

class HomeScreeen extends StatelessWidget {
  static const String nameKay = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
