import 'package:flutter/material.dart';

import 'show.dart';

abstract class BaseNavigator {
  void showMessage(String? message,
      {String? buttonTextOne,
      VoidCallback? buttonActionOne,
      String? buttonTextTwo,
      VoidCallback? buttonActionTwo,
      bool isCanceLable = true});

}

class BaseViewModel<Not extends BaseNavigator> extends ChangeNotifier {
  Not? navigator;
}

abstract class BaseState<T extends StatefulWidget, VM extends BaseViewModel>
    extends State<T> implements BaseNavigator {

  late VM viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = initViewModel();
    viewModel.navigator = this;
  }

  VM initViewModel();

  @override
  void showMessage(String? message,
      {String? buttonTextOne,
      VoidCallback? buttonActionOne,
      String? buttonTextTwo,
      VoidCallback? buttonActionTwo,
      bool isCanceLable = true}) {
    showMessageDialog(context, message ?? "",
        buttonTextOne: buttonTextOne,
        buttonActionOne: buttonActionOne,
        buttonTextTwo: buttonTextTwo,
        buttonActionTwo: buttonActionTwo,
        isCanceLable: isCanceLable);
  }

}
