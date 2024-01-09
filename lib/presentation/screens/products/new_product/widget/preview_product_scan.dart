import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/config/route_name.dart';
import 'package:untitled/presentation/widget/components/basic_button.dart';

class PreviewProductScan extends StatelessWidget {
  const PreviewProductScan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BasicButton(onTap: () {
          context.go(RouteName.scanProduct);
        }, textButton: "Escanear",),
      ],
    );
  }
}
