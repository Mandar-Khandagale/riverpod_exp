import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class FavouritePage extends ConsumerWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.favouritePage.tr()),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
        return ListTile(
          title: const Text("Product name"),
          subtitle: const Text("price"),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_border)),
        );
      }),
    );
  }
}
