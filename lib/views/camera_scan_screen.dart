import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/controller/scan_controller.dart';

class CameraScanScreen extends ConsumerWidget {
  const CameraScanScreen({super.key});

  @override
  Widget build(context, ref) {
    final scanP = ref.watch(scanControllerProvider);
    //ref.read(scanControllerProvider.notifier).goToNext();
    return Scaffold(
      body: Center(
        child: Column(
          //alignment: Alignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            scanP.isCameraInitialized
                ? AspectRatio(
                    aspectRatio: scanP.controller.value.aspectRatio,
                    child: CameraPreview(scanP.controller),
                  )
                : const CircularProgressIndicator(),
            SizedBox(
              height: 29,
            ),
            Text(
              "${scanP.result}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                ref.read(scanControllerProvider.notifier).initCamera();
              },
              child: Text("PRESS"),
            )
          ],
        ),
      ),
    );
  }
}
