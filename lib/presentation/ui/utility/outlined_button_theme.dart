import 'package:flutter/material.dart';


class FTOutlinedButtonTheme {
  FTOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.grey.shade100,
      side: BorderSide(color: Colors.grey.shade100),
      textStyle: const TextStyle(
          fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: 20, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}