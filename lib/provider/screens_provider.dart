import 'package:flutter/cupertino.dart';

class ScreenSprovider extends ChangeNotifier {
  bool isPicked = false;

   bool isImgVisible = false;
  
  bool isStitching = false;
  bool isCompleted = false;
  bool isTaken = false;
  bool isDelivered = false;

  changepickedUp(bool value) {
    isPicked = value;
    notifyListeners();
  }

   changePickup(bool value) {
    isPicked = value;
    notifyListeners();
  }

  changeStitching(bool value) {
    isStitching = value;
    notifyListeners();
  }

  changeCompleted(bool value) {
    isCompleted = value;
    notifyListeners();
  }

  changeTaken(bool value) {
    isTaken = value;
    notifyListeners();
  }

  changeDeliverd(bool value) {
    isDelivered = value;
    notifyListeners();
  }

    imgVisibility() {
    isImgVisible = !isImgVisible;
    notifyListeners();
  }

  
}
