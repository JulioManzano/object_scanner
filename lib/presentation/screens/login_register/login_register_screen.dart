import 'package:flutter/material.dart';
import 'package:untitled/presentation/screens/login_register/widget/login_form.dart';

import '../../../core/constants/constants.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({
    super.key,
    this.isRegister = true,
  });

  final bool isRegister;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            padding: EdgeInsets.zero,
            dividerColor: Colors.transparent,
            indicatorColor: kPrimaryColor,
            labelColor: kPrimaryColor,
            labelPadding: EdgeInsets.zero,
            tabs: [
              /*Tab(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "Registrarse",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),*/
              Tab(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "Iniciar Sesión",
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            //RegisterForm(),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
