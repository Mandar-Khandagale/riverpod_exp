import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/navigations/routes.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.productPage.tr()),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.settingsPage);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amberAccent,
        child: IconButton(
          icon: const Icon(
            Icons.favorite_sharp,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, Routes.jokePage);
          },
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
        return const ListTile(
          title: Text("Product Name"),
          subtitle: Text("Price"),
          trailing: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            );
      }),
    );
  }
}
