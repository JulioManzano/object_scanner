import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/domain/models/user.dart';
import 'package:untitled/presentation/provider/data_info/user_provider.dart';
import 'package:untitled/presentation/screens/navigation/home/scanner/body_scanner.dart';

import '../admin/body_admin.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final userP = Provider.of<UserProvider>(context);
    print("ROL: ${userP.user.role}");
    switch (userP.user.role) {
      case "scanner":
        return const BodyScanner();
      case "ADM":
        return const BodyAdmin();
    }

    return const Center(child: Text("Rol sin asignar"));
  }
}
