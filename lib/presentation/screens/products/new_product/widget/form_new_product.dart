import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/utils/dialog_utils.dart';
import 'package:untitled/data/service/object_model_service.dart';
import 'package:untitled/data/service/product_service.dart';
import 'package:untitled/data/service/resource_service.dart';
import 'package:untitled/presentation/provider/form/new_product_form_provider.dart';
import 'package:untitled/presentation/widget/components/basic_button.dart';
import 'package:untitled/presentation/widget/components/loading_indicator.dart';
import 'package:untitled/presentation/widget/components/text_field_form.dart';

class FormNewProduct extends StatefulWidget {
  const FormNewProduct({super.key});

  @override
  State<FormNewProduct> createState() => _FormNewProductState();
}

class _FormNewProductState extends State<FormNewProduct> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    final formP = Provider.of<ProductFormProvider>(context, listen: false);
    return loading
        ? const LoadingIndicator(
            text: "Procesando imagen...",
          )
        : Form(
            child: Column(
              children: [
                const SizedBox(height: 8),
                TextFieldForm(
                  hintText: "Titulo",
                  controller: formP.titleController,
                ),
                const SizedBox(height: 12),
                TextFieldForm(
                  hintText: "Descripcion",
                  controller: formP.descriptionController,
                ),
                const SizedBox(height: 12),
                TextFieldForm(
                  hintText: "Cantidad",
                  controller: formP.countController,
                ),
                const SizedBox(height: 12),
                TextFieldForm(
                  hintText: "Precio",
                  controller: formP.priceController,
                ),
                const SizedBox(height: 12),
                BasicButton(
                  onTap: () => addProduct(context),
                  textButton: "Agregar",
                )
              ],
            ),
          );
  }

  addProduct(BuildContext context) async {
    setState(() {
      loading = true;
    });
    final formP = Provider.of<ProductFormProvider>(context, listen: false);
    double? price = double.tryParse(formP.priceController.text);
    if (price == null) {
      DialogUtils.showSnackBar(context,
          title: "Ingrese un precio valido", error: true);
      return;
    }
    int? res = await ProductService().createProduct(
      name: formP.titleController.text,
      description: formP.descriptionController.text,
      priceUnit: price,
    );
    if (context.mounted) {
      if (res != null) {
        print("ID_PRODUCT : $res");
        bool createResourceRes = await ResourceService().createResources(
          resourceId: res,
          files: formP.images,
        );
        print("CreateResources: $createResourceRes");
        if (createResourceRes) {
          int? modelCreated = await ObjectModelService().createModel(
            venueId: 1,
          );
          print("ModelCreate: $modelCreated");
        }

        if (createResourceRes && context.mounted) {
          DialogUtils.basicDialog(context, title: "Producto creado con exito");
          context.pop();
          return;
        }
      }
      if (context.mounted) {
        DialogUtils.basicDialog(context, title: "Fallo al crear el producto");
      }
    }
    setState(() {
      loading = false;
    });
  }
}
