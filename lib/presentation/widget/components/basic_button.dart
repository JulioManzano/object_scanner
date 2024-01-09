import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';
import '../../../styles/text_style.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({
    super.key,
    required this.onTap,
    this.textStyle,
    this.textButton,
    this.icon,
    this.child,
    this.bgColor,
    this.textColor,
  });

  final VoidCallback onTap;
  final String? textButton;
  final String? icon;
  final Widget? child;
  final TextStyle? textStyle;

  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ?? kPrimaryColor,
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
        child: child ??
            Text(
              textButton ?? '',
              style: textStyle ?? StyleTxt.buttonWhite,
            ),
      ),
    );
  }
}
