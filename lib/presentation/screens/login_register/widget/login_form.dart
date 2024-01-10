import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/presentation/provider/data_info/main_provider.dart';

import '../../../../core/config/enviroment.dart';
import '../../../../core/constants/constants.dart';
import '../../../../data/service/auth_service.dart';
import '../../../../styles/text_style.dart';
import '../../../provider/data_info/loading_notifier.dart';
import '../../../provider/data_info/user_provider.dart';
import '../../../widget/components/basic_button.dart';
import '../../../widget/components/text_field_form.dart';
import '../../wrapper/wrapper.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  LoadingNotifier loadingN = LoadingNotifier(false);

  @override
  Widget build(BuildContext context) {
    double spacer = 14;
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldForm(
                hintText: "Correo",
                controller: emailController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: spacer),
              TextFieldForm(
                hintText: "Contraseña",
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: spacer * 2),
              ValueListenableBuilder(
                  valueListenable: loadingN,
                  builder: (_, value, __) {
                    return value
                        ? const CircularProgressIndicator(color: kPrimaryColor)
                        : BasicButton(
                            onTap: login,
                            child: const Text(
                              "Iniciar Sesión",
                              style: StyleTxt.buttonWhite,
                            ),
                          );
                  }),
              SizedBox(height: spacer * 2),
            ],
          ),
        ),
      ),
    );
  }

  login() async {
    loadingN.changeValue(true);
    var user = await AuthService().signInUsernameAndPassword(
        emailController.text.trim(), passwordController.text.trim());
    loadingN.changeValue(false);

    if (user != null && context.mounted && user.token != null) {
      //write profile data
      context.read<UserProvider>().setUserNN(user);
      context.read<MainProvider>().savePreference('token', user.token!);

      Enviroment.setPrivate(user.token!);
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const Wrapper()),
      );
    }
  }
}
