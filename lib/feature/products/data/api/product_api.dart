import 'package:riverpod_exp/core/constants/api_endpoints.dart';
import 'package:riverpod_exp/core/netowrk/dio_client.dart';

class ProductApi{

  final DioClient _dioClient;

  ProductApi(this._dioClient);


  ///to fetch product from api
  Future fetchProduct() async{
    try{
      final response = await _dioClient.get(Endpoints.product);
      return response.data;
    }catch(e) {
      rethrow;
    }
  }



}