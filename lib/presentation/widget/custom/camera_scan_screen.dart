import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tflite_v2/tflite_v2.dart';



class CameraScanScreen extends StatefulWidget {
  const CameraScanScreen({super.key});

  @override
  State<CameraScanScreen> createState() => _CameraScanScreenState();
}

class _CameraScanScreenState extends State<CameraScanScreen> {
  late CameraController controller;
  late List<CameraDescription> cameras;

  bool isCameraInitialized = false;
  String result = "";
  int count = 0;


  @override
  void dispose() async {
    //await Tflite.close();
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await loadModel();
    initCamera();
  }

  Future loadModel() async {
    //final res = await Tflite.loadModel(
    //  model: 'assets/posenet_mv1_075_float_from_checkpoints.tflite',
    //  numThreads: 1,
    //  // defaults to 1
    //  isAsset: true,
    //  // defaults to true, set to false to load resources outside assets
    //  useGpuDelegate: false,
    //);

    final res = await Tflite.loadModel(
      model: 'assets/model.tflite',
      labels: "assets/labels.txt",

      //numThreads: 1, // defaults to 1
      //isAsset: true, // defaults to true, set to false to load resources outside assets
      //useGpuDelegate: false ,
    );
    print("RESPONSE MODEL: $res");
  }

  initCamera() async {
    await loadModel();
    if (await Permission.camera.request().isGranted) {
      cameras = await availableCameras();

      controller = CameraController(cameras[0], ResolutionPreset.low);
      await controller.initialize().then(
        (value) {
          controller.startImageStream((image) {
            objetDetector(image);
          });
        },
      );
      setState(() {
        isCameraInitialized = true;
      });
    } else {
      print("Permision denied");
    }
  }

  objetDetector(CameraImage image) async {
    count++;
    if (count % 30 == 0) {
      print("PASO");
      count = 0;
      var recognitions = await Tflite.runModelOnFrame(
        bytesList: image.planes.map((e) => e.bytes).toList(),
        imageHeight: image.height,
        imageWidth: image.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 3,
        threshold: 0.1,
        asynch: true,
      );
      if (recognitions != null) {
        setState(() {
          result = "";
          for (var element in recognitions) {
            print("RECOG: $element");
            //result +=
            //    "\n${element['label'] ?? 'no label'} | ${element["confidence"]}";
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isCameraInitialized
                ? AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: CameraPreview(controller),
                  )
                : const CircularProgressIndicator(),
            const SizedBox(height: 29),
            Text(
              result,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
