import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_exp/core/netowrk/dio_expection.dart';
import 'package:riverpod_exp/feature/products/data/api/product_api.dart';
import 'package:riverpod_exp/feature/products/data/model/products_model.dart';

class ProductRepository{

  final ProductApi _productApi;

  ProductRepository(this._productApi);

  Future<List<ProductsModel>> fetchProduct() async{
    try{
      final response = await _productApi.fetchProduct();
      final jokeData = (response as List).map((e) => ProductsModel.fromJson(e)).toList();
      return jokeData;
    }on DioError catch(e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }

  }




}