import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/notifiers/notifiers.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';
import 'package:riverpod_exp/utils/molecules/widgets/language_selection_widget.dart';

class UserDataPage extends ConsumerWidget {
  const UserDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.title.tr()),
        actions: const [
          LanguageSelectionWidget(),
        ],
      ),
      body: Center(
        child: userData.when(
          data: (user) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: user.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(user[index].name ?? ""),
                  subtitle: Text(user[index].email ?? ""),
                  trailing: Text(user[index].company?.name ?? ""),
                );
              },
            );
          },
          error: (error, _) {
            return Text(error.toString());
          },
          loading: () {
            return const CircularProgressIndicator.adaptive();
          },
        ),
      ),
    );
  }
}
