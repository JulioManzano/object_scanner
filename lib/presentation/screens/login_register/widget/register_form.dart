import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/dialog_utils.dart';
import '../../../../data/service/auth_service.dart';
import '../../../../styles/text_style.dart';
import '../../../provider/data_info/loading_notifier.dart';
import '../../../widget/components/basic_button.dart';
import '../../../widget/components/text_field_form.dart';
import '../../wrapper/wrapper.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  LoadingNotifier loadingN = LoadingNotifier(false);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double spacer = 14;
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldForm(
                hintText: "Nombre",
                controller: nameController,
                minLength: 3,
              ),
              SizedBox(height: spacer),
              TextFieldForm(
                hintText: "Apellido",
                controller: surnameController,
                minLength: 3,
              ),
              SizedBox(height: spacer),
              TextFieldForm(
                hintText: "Telefono (con código de area)",
                controller: phoneController,
                minLength: 3,
              ),
              SizedBox(height: spacer),
              TextFieldForm(
                hintText: "Correo",
                controller: emailController,
                textInputType: TextInputType.emailAddress,
                validator: (val) {
                  return null;
                },
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
                            onTap: register,
                            child: const Text(
                              "Registrarse",
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

  register() async {
    if (_formKey.currentState!.validate()) {
      loadingN.changeValue(true);
      var res = await AuthService().createUserEmailAndPassword(
        emailController.text,
        passwordController.text,
        (error) {
          DialogUtils.showSnackBar(context, title: error, error: true);
        },
      );
      if (res != null && context.mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const Wrapper()),
        );
      }

      loadingN.changeValue(false);
    }
  }
}
