import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  //getters
  Widget get screen => _screen;

  //setters
  Widget _screen = const SizedBox();

  void setHomePage(Widget child) {
    _screen = child;
    notifyListeners();
  }
}
