import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as imageLib;
import 'package:tflite_flutter_plus/tflite_flutter_plus.dart';
import 'package:tflite_flutter_helper_plus/tflite_flutter_helper_plus.dart';
import 'package:untitled/presentation/screens/test/tflite/recognition.dart';
import 'stats.dart';

/// Classifier
class Classifier {
  /// Instance of Interpreter
  late Interpreter _interpreter;

  /// Labels file loaded as list
  late List<String> _labels;

  static const String MODEL_FILE_NAME = "detect.tflite";
  static const String LABEL_FILE_NAME = "labelmap.txt";

  /// Input size of image (height = width = 300)
  static const int INPUT_SIZE = 300;

  /// Result score threshold
  static const double THRESHOLD = 0.5;

  /// [ImageProcessor] used to pre-process the image
  late ImageProcessor imageProcessor;

  /// Padding the image to transform into square
  late int padSize;

  /// Shapes of output tensors
  late List<List<int>> _outputShapes;

  /// Types of output tensors
  late List<TfLiteType> _outputTypes;

  /// Number of results to show
  static const int NUM_RESULTS = 10;

  Classifier({
    required Interpreter interpreter,
    required List<String> labels,
  }) {
    _interpreter = interpreter;
    _labels = labels;
    loadModel();
    loadLabels();
  }

  /// Loads interpreter from asset
  void loadModel() async {
    try {
      var outputTensors = _interpreter.getOutputTensors();
      _outputShapes = [];
      _outputTypes = [];
      for (var tensor in outputTensors) {
        _outputShapes.add(tensor.shape);
        _outputTypes.add(tensor.type);
      }
    } catch (e) {
      print("Error while creating interpreter: $e");
    }
  }

  /// Loads labels from assets
  void loadLabels() async {
    try {
      //_labels =
      //    labels ?? await FileUtil.loadLabels("assets/" + LABEL_FILE_NAME);
    } catch (e) {
      print("Error while loading labels: $e");
    }
  }

  /// Pre-process the image
  TensorImage getProcessedImage(TensorImage inputImage) {
    padSize = max(inputImage.height, inputImage.width);
    imageProcessor = ImageProcessorBuilder()
        .add(ResizeWithCropOrPadOp(padSize, padSize))
        .add(ResizeOp(INPUT_SIZE, INPUT_SIZE, ResizeMethod.bilinear))
        .build();
    inputImage = imageProcessor.process(inputImage);
    return inputImage;
  }

  /// Runs object detection on the input image
  Map<String, dynamic> predict(imageLib.Image image) {
    var predictStartTime = DateTime.now().millisecondsSinceEpoch;

    var preProcessStart = DateTime.now().millisecondsSinceEpoch;

    // Create TensorImage from image
    TensorImage inputImage = TensorImage.fromImage(image);

    // Pre-process TensorImage
    inputImage = getProcessedImage(inputImage);

    var preProcessElapsedTime =
        DateTime.now().millisecondsSinceEpoch - preProcessStart;

    // TensorBuffers for output tensors
    TensorBuffer outputLocations = TensorBufferFloat(_outputShapes[0]);
    TensorBuffer outputClasses = TensorBufferFloat(_outputShapes[1]);
    TensorBuffer outputScores = TensorBufferFloat(_outputShapes[2]);
    TensorBuffer numLocations = TensorBufferFloat(_outputShapes[3]);

    // Inputs object for runForMultipleInputs
    // Use [TensorImage.buffer] or [TensorBuffer.buffer] to pass by reference
    List<Object> inputs = [inputImage.buffer];

    // Outputs map
    Map<int, Object> outputs = {
      0: outputLocations.buffer,
      1: outputClasses.buffer,
      2: outputScores.buffer,
      3: numLocations.buffer,
    };

    var inferenceTimeStart = DateTime.now().millisecondsSinceEpoch;

    // run inference
    print("PASO 11");
    _interpreter.runForMultipleInputs(inputs, outputs);

    var inferenceTimeElapsed =
        DateTime.now().millisecondsSinceEpoch - inferenceTimeStart;

    // Maximum number of results to show
    int resultsCount = min(NUM_RESULTS, numLocations.getIntValue(0));

    // Using labelOffset = 1 as ??? at index 0
    int labelOffset = 1;

    // Using bounding box utils for easy conversion of tensorbuffer to List<Rect>
    List<Rect> locations = BoundingBoxUtils.convert(
      tensor: outputLocations,
      valueIndex: [1, 0, 3, 2],
      boundingBoxAxis: 2,
      boundingBoxType: BoundingBoxType.boundaries,
      coordinateType: CoordinateType.ratio,
      height: INPUT_SIZE,
      width: INPUT_SIZE,
    );

    List<Recognition> recognitions = [];

    for (int i = 0; i < resultsCount; i++) {
      // Prediction score
      var score = outputScores.getDoubleValue(i);

      // Label string
      var labelIndex = outputClasses.getIntValue(i) + labelOffset;
      var label = _labels.elementAt(labelIndex);

      if (score > THRESHOLD) {
        // inverse of rect
        // [locations] corresponds to the image size 300 X 300
        // inverseTransformRect transforms it our [inputImage]
        Rect transformedRect = imageProcessor.inverseTransformRect(
            locations[i], image.height, image.width);

        recognitions.add(
          Recognition(i, label, score, transformedRect),
        );
      }
    }

    var predictElapsedTime =
        DateTime.now().millisecondsSinceEpoch - predictStartTime;

    return {
      "recognitions": recognitions,
      "stats": Stats(
        totalPredictTime: predictElapsedTime,
        inferenceTime: inferenceTimeElapsed,
        preProcessingTime: preProcessElapsedTime,
        totalElapsedTime: 1,
      )
    };
  }

  /// Gets the interpreter instance
  Interpreter? get interpreter => _interpreter;

  /// Gets the loaded labels
  List<String>? get labels => _labels;
}
