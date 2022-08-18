import 'package:flutter/cupertino.dart';

class TogleButtonprovider extends ChangeNotifier {
  bool isToggle = false;

  bool isExpand = false;

  switchToggle(bool isChange) {
    isToggle = isChange;
    notifyListeners();
  }

  orderStatusVisibility(bool value) {
    isExpand = !isExpand;
    notifyListeners();
  }
}
