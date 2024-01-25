import 'package:flutter/material.dart';

import '../../../data/models/img_crop.dart';

class ProductFormProvider extends ChangeNotifier {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController countController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  List<ImgCrop> images = [];
  String? idProduct;

  ProductFormProvider({this.idProduct});

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    countController.dispose();
    priceController.dispose();
    super.dispose();
  }

  void addImage(ImgCrop imgCrop) {
    images.add(imgCrop);
    notifyListeners();
  }

  void deleteImage(int index) {
    images.removeAt(index);
    notifyListeners();
  }
}
