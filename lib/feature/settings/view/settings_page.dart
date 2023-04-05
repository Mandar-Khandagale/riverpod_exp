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
      body: Column(
        children: [
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: ListTile(
               onTap: () {
                 Navigator.pushReplacementNamed(context, Routes.jokePage);
               },
               title: Text(LocaleKeys.joke.tr()),
             ),
           ),
          const Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.productPage);
              },
              title: Text(LocaleKeys.productPage.tr()),
            ),
          ),
          const Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.videoPage);
              },
              title: Text(LocaleKeys.video.tr()),
            ),
          ),
          const Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.futureProviderPage);
              },
              title: Text(LocaleKeys.futureProviderView.tr()),
            ),
          ),
          const Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.hooksExp);
              },
              title: const Text("Hooks Demo"),
            ),
          ),
          const Divider(thickness: 1),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: FittedBox(child: LanguageSelectionWidget()),
            ),
        ],
      )
    );
  }
}
