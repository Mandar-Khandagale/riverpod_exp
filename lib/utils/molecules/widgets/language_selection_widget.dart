import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class LanguageSelectionWidget extends StatelessWidget {
  const LanguageSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        border: Border.all(color: Colors.black)
      ),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                context.setLocale(const Locale("en"));
              },
              child: Text(LocaleKeys.english.tr())),
          const VerticalDivider(color: Colors.black),
          InkWell(
              onTap: () {
                context.setLocale(const Locale("hi"));
              },
              child: Text(LocaleKeys.hindi.tr())),
        ],
      ),
    );
  }
}
