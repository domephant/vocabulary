import 'package:flutter/cupertino.dart';

class PageIndex extends ChangeNotifier {
  int index = 0;

  int get pageIndex => index;

  void changeNumber(int i) {
    index = i;
    notifyListeners();
  }
}
