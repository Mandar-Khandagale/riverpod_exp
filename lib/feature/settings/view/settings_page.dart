import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/core/shared_provider/shared_providers.dart';
import 'package:riverpod_exp/navigations/routes.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';
import 'package:riverpod_exp/utils/molecules/widgets/language_selection_widget.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeChangeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.settingsPage.tr()),
        actions: [
            IconButton(
                onPressed: () {
                  ref.read(themeChangeProvider.notifier).state =
                      theme == ThemeMode.dark
                          ? ThemeMode.light
                          : ThemeMode.dark;
                },
                icon: Icon(theme == ThemeMode.dark
                    ? Icons.light_mode
                    : Icons.dark_mode)),
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
             ListTile(
               onTap: () {
                 Navigator.pushReplacementNamed(context, Routes.jokePage);
               },
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
