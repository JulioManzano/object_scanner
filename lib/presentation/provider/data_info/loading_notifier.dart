import 'package:flutter/cupertino.dart';

class LoadingNotifier extends ValueNotifier<bool> {
  LoadingNotifier(super.value);

  changeValue(bool newValue) {
    value = newValue;
    notifyListeners();
  }
}
