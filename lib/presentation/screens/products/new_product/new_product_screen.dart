import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/presentation/provider/form/new_product_form_provider.dart';
import 'package:untitled/presentation/screens/products/new_product/widget/form_new_product.dart';
import 'package:untitled/presentation/screens/products/new_product/widget/preview_product_scan.dart';
import 'package:untitled/presentation/widget/components/app_bar_basic.dart';

class FormProductScreen extends StatelessWidget {
  const FormProductScreen({
    super.key,
    this.idProduct,
  });

  final String? idProduct;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NewProductFormProvider(),
      child: const Scaffold(
        appBar: AppBarBasic(
          title: "Nuevo producto",
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12),
              PreviewProductScan(),
              SizedBox(height: 12),
              FormNewProduct(),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
