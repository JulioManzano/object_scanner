import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:untitled/data/models/img_crop.dart';
import 'package:untitled/presentation/provider/form/new_product_form_provider.dart';
import 'package:untitled/presentation/screens/products/new_product/widget/cut_image_screen.dart';
import 'package:untitled/presentation/widget/components/basic_button.dart';
import 'item_image.dart';

class PreviewProductScan extends StatefulWidget {
  const PreviewProductScan({super.key});

  @override
  State<PreviewProductScan> createState() => _PreviewProductScanState();
}

class _PreviewProductScanState extends State<PreviewProductScan> {
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final pFormP = Provider.of<NewProductFormProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: pFormP.images.length,
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return ItemImage(
                videoFile: pFormP.images[index].file,
                onDeleted: () {
                  pFormP.deleteImage(index);
                },
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          "Seleccionar 2 o más Images, luego seleccionar el area donde se encuentra.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BasicButton(
              onTap: () => pickImage(ImageSource.gallery),
              textButton: "Galeria",
            ),
            BasicButton(
              onTap: () => pickImage(ImageSource.camera),
              textButton: "Camará",
            ),
          ],
        ),
      ],
    );
  }

  pickImage(ImageSource source) async {
    final XFile? file = await _picker.pickImage(
      source: source,
    );

    cropImageAndAdd(file);
  }

  pickVideo(ImageSource source) async {
    final XFile? file = await _picker.pickVideo(
      source: source,
      maxDuration: const Duration(seconds: 2),
    );

    cropImageAndAdd(file);
  }

  cropImageAndAdd(XFile? file) async {
    if (file != null) {
      Uint8List uint8list = await file.readAsBytes();

      if (context.mounted) {
        final res = await Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => CutImageScreen(bytes: uint8list)),
        );
        if (res != null && context.mounted) {
          context.read<NewProductFormProvider>().addImage(
                ImgCrop(file: file, uint8list: res),
              );
        }
      }
    }
  }
}
