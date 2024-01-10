import 'package:flutter/material.dart';
import 'package:untitled/styles/text_style.dart';

import '../core/constants/constants.dart';

class DecorationInput {
  static InputDecoration formDecoration = InputDecoration(
    hintStyle: StyleTxt.hintText,
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: kPrimaryColor, width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(12),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(12),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(12),
    ),
    border: InputBorder.none,
  );
}
