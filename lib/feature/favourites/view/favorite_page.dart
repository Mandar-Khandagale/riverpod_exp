import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/favourites/provider/favourite_provider.dart';
import 'package:riverpod_exp/feature/products/provider/product_provider.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class FavouritePage extends ConsumerWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouriteList = ref.watch(favouritesProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.favouritePage.tr()),
      ),
      body: favouriteList.isEmpty
          ? const Center(
              child: Text("No Favourites added yet"),
            )
          : ListView.separated(
              itemCount: favouriteList.length,
              separatorBuilder: (context, index) {
                return const Divider(color: Colors.black,);
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Text(favouriteList[index].title ?? ""),
                    subtitle: Text(favouriteList[index].price.toString()),
                    trailing: IconButton(
                        onPressed: () {
                          ref
                              .read(productListNotifierProvider.notifier)
                              .toggleFavourite(favouriteList[index].id ?? 0,
                                  isFavourite: false);
                        },
                        icon: const Icon(Icons.favorite, color: Colors.red,)),
                  ),
                );
              }),
    );
  }
}
