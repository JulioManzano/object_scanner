import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/utils/dialog_utils.dart';
import 'package:video_player/video_player.dart';

class ItemImage extends StatefulWidget {
  const ItemImage({
    super.key,
    required this.videoFile,
    required this.onDeleted,
  });

  final XFile videoFile;
  final VoidCallback onDeleted;

  @override
  State<ItemImage> createState() => _ItemImageState();
}

class _ItemImageState extends State<ItemImage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 3),
              blurRadius: 4,
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: GestureDetector(
          onTap: () async {
            bool? res = await DialogUtils.confirmButton(
              context,
              title: "¿Desea borrar la imagen?",
            );
            if (res ?? false) {
              widget.onDeleted();
            }
          },
          child: SizedBox(
            //aspectRatio: _controller.value.aspectRatio,
            height: 100,
            width: 90,
            child: Image.file(File(widget.videoFile.path), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
