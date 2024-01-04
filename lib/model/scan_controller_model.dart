import 'package:camera/camera.dart';

class ScanControllerModel {
  late CameraController controller;
  late List<CameraDescription> cameras;

  bool isCameraInitialized = false;
  String result = "";
}
