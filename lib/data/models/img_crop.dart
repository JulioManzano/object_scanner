import 'dart:typed_data';
import 'dart:ui';
import 'package:camera/camera.dart';

class ImgCrop {
  XFile file;
  Uint8List uint8list;

  ImgCrop({
    required this.file,
    required this.uint8list,
  });
}
