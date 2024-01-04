import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tflite_v2/tflite_v2.dart';
import 'package:untitled/model/scan_controller_model.dart';

part 'scan_controller.g.dart';

@riverpod
class ScanController extends _$ScanController {
  @override
  ScanControllerModel build() {
    return ScanControllerModel();
  }

  loadModel() async {
    final res = await Tflite.loadModel(
      model: 'assets/mobilenet_v1_1.0_224.tflite',
      labels: "assets/labels.txt",
    );
  }

  int count = 0;

  initCamera() async {
    await loadModel();
    if (await Permission.camera.request().isGranted) {
      state.cameras = await availableCameras();

      state.controller =
          CameraController(state.cameras[0], ResolutionPreset.medium);
      await state.controller.initialize().then(
        (value) {
          state.controller.startImageStream((image) {
            objetDetector(image);
          });
        },
      );
      print("NOTIFY");
      state.isCameraInitialized = true;
      ref.notifyListeners();
    } else {
      print("Permision denied");
    }
  }

  objetDetector(CameraImage image) async {
    count++;
    if (count % 40 == 0) {
      print("PASO");
      count = 0;
      var recognitions = await Tflite.runModelOnFrame(
        bytesList: image.planes.map((e) => e.bytes).toList(),
        imageHeight: image.height,
        imageWidth: image.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 1,
        threshold: 0.1,
        asynch: true,
      );
      if(recognitions!=null){
        print("RES: ${recognitions.first}");
        state.result = recognitions.first["label"] ?? "none";
        ref.notifyListeners();
      }
    }
  }
}
