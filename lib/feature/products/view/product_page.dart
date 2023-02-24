import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/products/provider/product_provider.dart';
import 'package:riverpod_exp/navigations/routes.dart';
import 'package:riverpod_exp/translations/locale_keys.g.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(isProductLoadingProvider);
    final productListData = ref.watch(productListNotifierProvider);
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
            Navigator.pushNamed(context, Routes.favouritePage);
          },
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator.adaptive())
          : ListView.separated(
              shrinkWrap: true,
              itemCount: productListData.length,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.black,
                );
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    onTap: () {

                    },
                      leading: Hero(
                        tag: productListData[index].id ?? 0,
                        child: CircleAvatar(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child:
                                Image.network(productListData[index].image ?? ""),
                          ),
                        ),
                      ),
                      title: Text(productListData[index].title ?? ""),
                      subtitle: Text(productListData[index].price.toString()),
                      trailing: productListData[index].isFavourite
                          ? IconButton(
                              onPressed: () {
                                ref
                                    .read(productListNotifierProvider.notifier)
                                    .toggleFavourite(
                                        productListData[index].id ?? 0,
                                        isFavourite: false);
                              },
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ))
                          : IconButton(
                              onPressed: () {
                                ref
                                    .read(productListNotifierProvider.notifier)
                                    .toggleFavourite(
                                        productListData[index].id ?? 0,
                                        isFavourite: true);
                              },
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ))),
                );
              }),
    );
  }
}
