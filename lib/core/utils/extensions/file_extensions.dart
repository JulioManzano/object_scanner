import 'dart:io';

import 'package:camera/camera.dart';

extension FileEx on File {
  String get name => path.split(Platform.pathSeparator).last;

  String get ext => path.split(Platform.pathSeparator).last.split('.').last;
}
extension XFileEx on XFile {
  String get name => path.split(Platform.pathSeparator).last;

  String get ext => path.split(Platform.pathSeparator).last.split('.').last;
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}