import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/config/route_name.dart';
import 'package:untitled/presentation/screens/navigation/home/admin/list_products.dart';
import 'package:untitled/presentation/widget/components/basic_button.dart';

class BodyAdmin extends StatelessWidget {
  const BodyAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("ADMIN"),
        const Expanded(child: ListProducts()),
        Center(
          child: BasicButton(
            onTap: () {
              context.push(RouteName.product);
            },
            textButton: "Agregar",
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
