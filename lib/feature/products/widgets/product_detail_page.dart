import 'package:flutter/material.dart';
import 'package:riverpod_exp/feature/products/data/model/products_model.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductDetailPageArgs args;
  const ProductDetailPage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(args.productsModel.title ?? ""),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: args.productsModel.id ?? 0,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: FittedBox(fit: BoxFit.fill,child: Image.network(args.productsModel.image ?? "")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                    child: Text(
                      "\$.${args.productsModel.price.toString()}",
                      style: const TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    args.productsModel.description ?? "-",
                    style: const TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ProductDetailPageArgs {
  final ProductsModel productsModel;

  ProductDetailPageArgs(this.productsModel);

}