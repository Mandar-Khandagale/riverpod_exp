import 'package:flutter/material.dart';
import 'package:riverpod_exp/feature/products/data/model/products_model.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductDetailPageArgs args;
  const ProductDetailPage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class ProductDetailPageArgs {
  final ProductsModel productsModel;

  ProductDetailPageArgs(this.productsModel);

}