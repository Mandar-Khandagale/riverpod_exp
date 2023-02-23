import 'package:riverpod_exp/core/constants/api_endpoints.dart';
import 'package:riverpod_exp/core/netowrk/dio_client.dart';

class JokeApi{

  final DioClient _dioClient;

  JokeApi(this._dioClient);

  ///to fetch jokes from api
  Future<Map<String, dynamic>> fetchJokes() async{
    try{
      final response = await _dioClient.get(Endpoints.jokes);
      return response.data;
    }catch(e) {
      rethrow;
    }
  }

}