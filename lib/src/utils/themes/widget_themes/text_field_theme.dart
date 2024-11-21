import 'package:flutter/material.dart';

class TeamTextFieldTheme {
  TeamTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
    ),
    prefixIconColor: Colors.black,
    suffixIconColor: Colors.black,
    floatingLabelStyle: const TextStyle(color: Colors.black, fontSize: 18),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.5),
        borderRadius: BorderRadius.circular(10)),
    labelStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
    ),
  );
}
