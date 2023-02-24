import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/products/data/model/products_model.dart';
import 'package:riverpod_exp/feature/products/provider/product_provider.dart';

///favourite list provider
final favouritesProvider = StateProvider<List<ProductsModel>>((ref) {
  final res = ref
      .watch(productListNotifierProvider)
      .where((element) => element.isFavourite == true)
      .toList();
  return res;
});
