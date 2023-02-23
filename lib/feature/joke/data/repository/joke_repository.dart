import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_exp/core/netowrk/dio_expection.dart';
import 'package:riverpod_exp/feature/joke/data/api/joke_api.dart';
import 'package:riverpod_exp/feature/joke/data/model/joke_model.dart';

class JokeRepository{

  final JokeApi _jokeApi;

  JokeRepository(this._jokeApi);

  Future<JokeModel> fetchJoke() async{
    try{
      final response = await _jokeApi.fetchJokes();
      final jokeData = JokeModel.fromJson(response);
      return jokeData;
    }on DioError catch(e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }

  }

}