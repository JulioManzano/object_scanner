import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/models/api.dart';
import 'package:untitled/presentation/provider/data_info/main_provider.dart';
import 'package:untitled/presentation/provider/data_info/user_provider.dart';
import 'package:untitled/presentation/screens/login_register/login_register_screen.dart';
import 'package:untitled/presentation/screens/navigation/home/widget/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final userP = Provider.of<UserProvider>(context);
    return FutureBuilder(
      future: context.read<MainProvider>().verifyAccount(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.done) {
          if (snap.data != null) {
            context
                .read<UserProvider>()
                .setUserNN(TokenAuthEmail$Mutation$TokenAuth.fromJson(
                  snap.data!.profile!.toJson(),
                ));
            context
                .read<MainProvider>()
                .savePreference('token', snap.data!.token!);
            return const Home();
          } else {
            return const LoginRegisterScreen();
          }
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
