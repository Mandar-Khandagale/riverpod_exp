import 'package:flutter/material.dart';


class CommonBottomSheet {
  Future<dynamic> showBottomSheet({
    required BuildContext context,
    required Widget child,
    bool isDismissible = true,
    bool enableDrag = false,
    bool isScrollControlled = true,
    double elevation = 1,
    Color backgroundColor = Colors.white,
    BoxConstraints constraints = const BoxConstraints(
      minHeight: 200,
      minWidth: double.infinity,
    ),
  }) async {
    return await showModalBottomSheet(
      context: context,
      backgroundColor: backgroundColor,
      isScrollControlled: true,
      elevation: elevation,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      constraints: constraints,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (ctx) {
        return child;
      },
    );
  }
}

