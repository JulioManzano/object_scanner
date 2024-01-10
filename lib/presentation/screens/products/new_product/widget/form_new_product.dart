import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/presentation/provider/form/new_product_form_provider.dart';
import 'package:untitled/presentation/widget/components/basic_button.dart';
import 'package:untitled/presentation/widget/components/text_field_form.dart';

class FormNewProduct extends StatelessWidget {
  const FormNewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final formP = Provider.of<NewProductFormProvider>(context, listen: false);
    return Form(
      child: Column(
        children: [
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
          BasicButton(
            onTap: () {},
            textButton: "Agregar",
          )
        ],
      ),
    );
  }
}
