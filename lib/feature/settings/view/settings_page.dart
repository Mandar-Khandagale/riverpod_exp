import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_exp/navigations/routes.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';
import 'package:riverpod_exp/utils/molecules/widgets/language_selection_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.settingsPage.tr()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
             ListTile(
               onTap: () => Navigator.pushNamed(context, Routes.jokePage),
               title: Text(LocaleKeys.joke.tr()),
             ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: FittedBox(child: LanguageSelectionWidget()),
              ),
          ],
        ),
      )
    );
  }
}
