import 'package:flutter/material.dart';

class ContainerController extends ChangeNotifier {
  bool haveText = false;
  String? symbol;

  void addSymbol(String symbolParam) {
    symbol = symbolParam;
    haveText = !haveText;
    notifyListeners();
  }
}
