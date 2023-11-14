import 'package:flutter/material.dart';
import 'colors.dart';

class FTTextFormFieldTheme {
  FTTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = const InputDecorationTheme(
    errorMaxLines: 3,
    //labelStyle: TextStyle(color: FTColors.authFormLabel, fontSize: 20),
    errorStyle: TextStyle(color: FTColors.authFormErrorLabel, fontSize: 12),
    //floatingLabelStyle: TextStyle(color: FTColors.authFormErrorLabel),
    floatingLabelBehavior:FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(vertical: 20),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: FTColors.authFormSubHeading),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: FTColors.authFormSubHeading),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: FTColors.authFormErrorLabel),
    ),
    focusedErrorBorder: UnderlineInputBorder(

      borderSide: BorderSide(color: FTColors.authFormErrorLabel),
    ),
  );
}