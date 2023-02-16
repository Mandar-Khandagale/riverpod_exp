import 'dart:developer';

import 'package:dio/dio.dart';


///Where and when to use Interceptors
///Interceptors are good to use in any case where we want to avoid repeating code frequently used in our calls.
/// A simple scenario would be when a user would like to log the HTTP calls, or modify them before reaching to and from the server.
/// 1. Log Interceptors
///  --- used to print logs of request and body
/// eg:-
// Create a Dio object
// final dio = Dio();

// To show logs, register [LogInterceptor]
// dio.interceptors.add(LogInterceptor());
/// 2. Custom Interceptors
///  --- used to pass custom values in api endpoints like header or token etc
///  eg:-
// @override
// void onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//     ) async {
//
//   // create a list of the endpoints where you don't need to pass a token.
//   final listOfPaths = <String>[
//     '/send-otp',
//     '/validate-otp',
//   ];
//
//   // Check if the requested endpoint match in the
//   if (listOfPaths.contains(options.path.toString())) {
//     // if the endpoint is matched then skip adding the token.
//     return handler.next(options);
//   }
//
//   // Load your token here and pass to the header
//   var token = '';
//   options.headers.addAll({'Authorization': token});
//   return handler.next(options);
// }

class DioInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    log("Request[${options.method}] => PATH: ${options.path}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("Response Status Code: [${response.statusCode}]");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log("Error[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}");
    super.onError(err, handler);
  }
}
