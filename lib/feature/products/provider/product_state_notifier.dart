import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/feature/products/data/model/products_model.dart';
import 'package:riverpod_exp/feature/products/provider/product_provider.dart';

class ProductStateNotifier extends StateNotifier<List<ProductsModel>>{
  ProductStateNotifier(this.ref) : super([]) {
   fetchProducts(ref: ref);
  }

  Ref ref;

  ///to get the product list
  Future fetchProducts({required Ref ref}) async{
    await ref.read(productRepositoryProvider).fetchProduct().then((value) {
      state = value;

      ref.read(isProductLoadingProvider.notifier).state = false;
    });
  }

  ///toggle favourite button
  void toggleFavourite(int id, {required bool isFavourite}) {

    final updatedProduct = state
        .firstWhere((element) => element.id == id)
        .copyWith(isFavourite: isFavourite);

    state = [
      for (int i = 0; i < state.length; i++)
        if (state[i].id == id) updatedProduct else state[i]
    ];
  }


}