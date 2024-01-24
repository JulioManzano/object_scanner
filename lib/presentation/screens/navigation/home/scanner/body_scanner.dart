import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/config/route_name.dart';
import 'package:untitled/presentation/widget/components/basic_button.dart';

class BodyScanner extends StatelessWidget {
  const BodyScanner({super.key});

  @override
  Widget build(BuildContext context) {
    print("CREO W");
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (_, index) {
              return Container();
            },
            itemCount: 3,
          ),
        ),
        const SizedBox(height: 12),
        BasicButton(
          onTap: () {
            context.push(RouteName.scanProduct);
          },
          textButton: "Escanear",
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
