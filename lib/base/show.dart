import 'package:flutter/material.dart';

import 'myTheme.dart';

void showMessageDialog(BuildContext context, String message,
    {String? buttonTextOne,
    VoidCallback? buttonActionOne,
    String? buttonTextTwo,
    VoidCallback? buttonActionTwo,
    bool isCanceLable = true}) {
  List<Widget> actions = [];
  if (buttonTextOne != null) {
    actions.add(MaterialButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.pop(context);
          buttonActionOne;
        },
        child: Text(
          buttonTextOne,
          style: Theme.of(context).textTheme.headline4,
        )));
  }
  if (buttonTextTwo != null) {
    actions.add(TextButton(
        onPressed: () {
          Navigator.pop(context);
          buttonActionTwo;
        },
        child: Text(buttonTextTwo)));
  }

  showDialog(
    barrierColor: Colors.black38,
      context: context,
      builder: (_) {
        return AlertDialog(
            content: Text(
              message,
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: MyTheme.blackColor),
            ),
            actions: actions);
      },
      barrierDismissible: isCanceLable);
}
