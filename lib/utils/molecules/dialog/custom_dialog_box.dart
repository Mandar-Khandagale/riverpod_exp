import 'package:flutter/material.dart';

class CustomDialog {
  CustomDialog._();

  static showCustomDialog(
      {required BuildContext context, required Widget Function(BuildContext) builder}) {
    return showDialog(
      context: context,
      builder: builder,
    );
  }

}
