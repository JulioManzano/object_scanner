import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:native_image_cropper/native_image_cropper.dart';
import 'package:untitled/data/models/img_crop.dart';
import 'a_aspect_ratio_dropdown.dart';
import 'a_image_format_dropdown.dart';
import 'a_mode_buttons.dart';

class CutImageScreen extends StatefulWidget {
  const CutImageScreen({
    super.key,
    required this.bytes,
  });

  final Uint8List bytes;

  @override
  State<CutImageScreen> createState() => _CutImageScreenState();
}

class _CutImageScreenState extends State<CutImageScreen> {
  late CropController _controller;
  CropMode _mode = CropMode.rect;
  double? _aspectRatio;
  ImageFormat _format = ImageFormat.jpg;

  @override
  void initState() {
    super.initState();
    _controller = CropController();
    _controller.cropRectNotifier.addListener(() {

    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final secondaryColor = Theme.of(context).colorScheme.secondary;
    final cropPreview = CropPreview(
        controller: _controller,
        bytes: widget.bytes,
        mode: _mode,
        maskOptions: MaskOptions(aspectRatio: _aspectRatio),

        dragPointBuilder: (size, pos) {
          return CropDragPoint(
            size: size,
            color: secondaryColor,
          );
        });
    return Scaffold(
      appBar: AppBar(title: Text("Selection el producto"),),
      body: Column(
        children: [
          Flexible(child: cropPreview),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /*Flexible(
                child: ImageFormatDropdown(
                  onChanged: (value) => _format = value,
                ),
              ),*/
              Flexible(
                child: AspectRatioDropdown(
                  aspectRatio: _aspectRatio,
                  onChanged: (value) => setState(() => _aspectRatio = value),
                ),
              ),
              Flexible(
                child: CropModesButtons(
                  onChanged: (value) => setState(() => _mode = value),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => unawaited(_cropImage(context)),
                child: const Text('Seleccionar'),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Future<void> _cropImage(BuildContext context) async {
    final croppedBytes = await _controller.crop(format: _format);
    if (mounted) {
      context.pop(croppedBytes);
    }
  }
}
