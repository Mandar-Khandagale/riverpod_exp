import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exp/core/shared_provider/shared_providers.dart';
import 'package:riverpod_exp/feature/products/data/api/product_api.dart';
import 'package:riverpod_exp/feature/products/data/model/products_model.dart';
import 'package:riverpod_exp/feature/products/data/repository/product_repository.dart';
import 'package:riverpod_exp/feature/products/provider/product_state_notifier.dart';


///product api provider
final productApiProvider =
    Provider<ProductApi>((ref) => ProductApi(ref.read(dioClientProvider)));

///product repository provider
final productRepositoryProvider = Provider<ProductRepository>(
    (ref) => ProductRepository(ref.read(productApiProvider)));

///product loading state provider
final isProductLoadingProvider = StateProvider<bool>((ref) => true);



///product list provider
final productListNotifierProvider =
    StateNotifierProvider<ProductStateNotifier, List<ProductsModel>>(
        (ref) => ProductStateNotifier(ref));
