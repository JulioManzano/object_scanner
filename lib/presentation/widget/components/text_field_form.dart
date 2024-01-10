import 'package:flutter/material.dart';

import '../../../styles/decoration.dart';
import '../../../styles/text_style.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    super.key,
    this.controller,
    this.hintText = '',
    this.label,
    this.validator,
    this.minLength = 1,
    this.obscureText = false,
    this.autoValidate = false,
    this.onEditingComplete,
    this.focusNode,
    this.enabled = true,
    this.textInputAction,
    this.textInputType,
    this.onFieldSubmitted,
    this.onChanged,
    this.prefix,
  });

  final Function(String value)? onChanged;
  final TextEditingController? controller;
  final String? hintText;
  final String? label;
  final int minLength;
  final String? Function(String?)? validator;
  final Function(String?)? onFieldSubmitted;
  final bool obscureText;
  final bool autoValidate;
  final FocusNode? focusNode;
  final Function()? onEditingComplete;
  final bool enabled;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final String? prefix;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.60;
    return Container(
      width: width,
      constraints: const BoxConstraints(
        minWidth: 260,
        maxWidth: 400,
      ),
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        obscureText: obscureText,
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmitted,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        onEditingComplete: onEditingComplete,
        autovalidateMode:
            autoValidate ? AutovalidateMode.onUserInteraction : null,
        decoration: DecorationInput.formDecoration.copyWith(
          hintText: hintText,
          prefix: prefix != null ? Text(prefix!) : null,
          label: Text(
            label == null ? hintText! : label!,
            style: StyleTxt.hintText,
          ),
          floatingLabelStyle: StyleTxt.labelFloating,
        ),
        validator: validator ??
            (val) => (val == null || val.isEmpty)
                ? "Complete los datos"
                : (val.length < minLength)
                    ? "Minimo de caracteres: $minLength"
                    : null,
      ),
    );
  }
}
