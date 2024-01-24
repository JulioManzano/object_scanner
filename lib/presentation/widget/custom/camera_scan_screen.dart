import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
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

  late ObjectDetector objectDetector;

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
    //await loadModel();
    initGoogleModelLoad();
    await initCamera();
  }

  void initGoogleModelLoad() async {
    // Use DetectionMode.stream when processing camera feed.
// Use DetectionMode.single when processing a single image.
    const mode = DetectionMode.stream;

// Options to configure the detector while using with base model.
    //final options = ObjectDetectorOptions(...);

// Options to configure the detector while using a local custom model.
    final modelPath = await getModelPath('assets/model.tflite');

    final options = LocalObjectDetectorOptions(
      mode: mode,
      modelPath: modelPath,
      classifyObjects: true,
      multipleObjects: true,
    );

// Options to configure the detector while using a Firebase model.
    //final options = FirebaseObjectDetectorOptions(...);

    objectDetector = ObjectDetector(options: options);
  }

  Future<String> getModelPath(String asset) async {
    final path = '${(await getApplicationSupportDirectory()).path}/$asset';
    await Directory(dirname(path)).create(recursive: true);
    final file = File(path);
    if (!await file.exists()) {
      final byteData = await rootBundle.load(asset);
      await file.writeAsBytes(byteData.buffer
          .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    }
    return file.path;
  }

  objectDetectorFind(CameraImage image) async {
    InputImage? inputImage = _inputImageFromCameraImage(image);
    if (inputImage != null) {
      final List<DetectedObject> objects = await objectDetector.processImage(
        inputImage,
      );

      for (DetectedObject detectedObject in objects) {
        final rectF = detectedObject.boundingBox;
        final trackingId = detectedObject.trackingId;

        for (Label label in detectedObject.labels) {
          print(
              'label: ${label.text} condidence: ${label.confidence} trakingID: $trackingId');
          print("RECT: $rectF");
          setState(() {
            rect = rectF;
          });
        }
      }
    }
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
      numThreads: 1,
      // defaults to 1
      isAsset: true,
      // defaults to true, set to false to load resources outside assets
      useGpuDelegate: false,
    );
    print("RESPONSE MODEL: $res");
  }

  final _orientations = {
    DeviceOrientation.portraitUp: 0,
    DeviceOrientation.landscapeLeft: 90,
    DeviceOrientation.portraitDown: 180,
    DeviceOrientation.landscapeRight: 270,
  };

  InputImage? _inputImageFromCameraImage(CameraImage image) {
    // get image rotation
    // it is used in android to convert the InputImage from Dart to Java
    // `rotation` is not used in iOS to convert the InputImage from Dart to Obj-C
    // in both platforms `rotation` and `camera.lensDirection` can be used to compensate `x` and `y` coordinates on a canvas
    final camera = cameras[0];

    final sensorOrientation = cameras[0].sensorOrientation;
    InputImageRotation? rotation;
    if (Platform.isIOS) {
      rotation = InputImageRotationValue.fromRawValue(sensorOrientation);
    } else if (Platform.isAndroid) {
      var rotationCompensation =
          _orientations[controller!.value.deviceOrientation];
      if (rotationCompensation == null) return null;
      if (camera.lensDirection == CameraLensDirection.front) {
        // front-facing
        rotationCompensation = (sensorOrientation + rotationCompensation) % 360;
      } else {
        // back-facing
        rotationCompensation =
            (sensorOrientation - rotationCompensation + 360) % 360;
      }
      rotation = InputImageRotationValue.fromRawValue(rotationCompensation);
    }
    if (rotation == null) return null;

    // get image format
    final format = InputImageFormatValue.fromRawValue(image.format.raw);
    // validate format depending on platform
    // only supported formats:
    // * nv21 for Android
    // * bgra8888 for iOS
    if (format == null ||
        (Platform.isAndroid && format != InputImageFormat.nv21) ||
        (Platform.isIOS && format != InputImageFormat.bgra8888)) return null;

    // since format is constraint to nv21 or bgra8888, both only have one plane
    if (image.planes.length != 1) return null;
    final plane = image.planes.first;

    // compose InputImage using bytes
    return InputImage.fromBytes(
      bytes: plane.bytes,
      metadata: InputImageMetadata(
        size: Size(image.width.toDouble(), image.height.toDouble()),
        rotation: rotation, // used only in Android
        format: format, // used only in iOS
        bytesPerRow: plane.bytesPerRow, // used only in iOS
      ),
    );
  }

  initCamera() async {
    if (await Permission.camera.request().isGranted) {
      cameras = await availableCameras();

      controller = CameraController(
        cameras[0],
        ResolutionPreset.medium,
        imageFormatGroup: Platform.isAndroid
            ? ImageFormatGroup.nv21 // for Android
            : ImageFormatGroup.bgra8888,
      );
      await controller.initialize().then(
        (value) {
          controller.startImageStream((image) {
            objectDetectorFind(image);
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

  objectDetectorTF(CameraImage image) async {
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

  Rect? rect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
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
            if (rect != null)
              Container(
                width: 200.0,
                height: 150.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red)
                ),
                child: CustomPaint(
                  painter: RectPainter(rect!),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class RectPainter extends CustomPainter {
  final Rect rect;

  RectPainter(this.rect);

  @override
  void paint(Canvas canvas, Size size) {
    //final rect = Rect.fromPoints(Offset(50.0, 50.0), Offset(150.0, 100.0));
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
