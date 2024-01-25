import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key, this.text,});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if(text != null ) Text(text ?? "Cargando..."),
          const CircularProgressIndicator(
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}

