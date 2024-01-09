import 'package:flutter/foundation.dart';

class Utils {
  static String getPlatform() {
    String text = 'A';
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      text = 'I';
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      text = 'A';
    } else {
      text = 'W';
    }
    return text;
  }
}